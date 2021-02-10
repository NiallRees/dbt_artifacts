{{ config( materialized='incremental', unique_key='model_execution_id' ) }}

with models as (

    select *
    from {{ ref('stg_dbt__models') }}

),

model_executions as (

    select *
    from {{ ref('stg_dbt__model_executions') }}

),

model_executions_incremental as (

    select *
    from model_executions

    {% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where artifact_generated_at > (select max(artifact_generated_at) from {{ this }})
    {% endif %}

),

model_executions_with_materialization as (

    select
        model_executions_incremental.*,
        models.model_materialization,
        models.model_schema,
        models.name
    from model_executions_incremental
    left join models on (
        model_executions_incremental.command_invocation_id = models.command_invocation_id
        and model_executions_incremental.node_id = models.node_id
    )

),

fields as (

    select
        model_execution_id,
        command_invocation_id,
        artifact_generated_at,
        was_full_refresh,
        node_id,
        status,
        execution_time,
        rows_affected,
        model_materialization,
        model_schema,
        name
    from model_executions_with_materialization

)

select * from fields

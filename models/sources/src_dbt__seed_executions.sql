select
    cast(null as {{ type_string() }}) as command_invocation_id,
    cast(null as {{ type_string() }}) as node_id,
    cast(null as {{ type_timestamp() }}) as run_started_at,
    cast(null as {{ type_boolean() }}) as was_full_refresh,
    cast(null as {{ type_string() }}) as thread_id,
    cast(null as {{ type_string() }}) as status,
    cast(null as {{ type_timestamp() }}) as compile_started_at,
    cast(null as {{ type_timestamp() }}) as query_completed_at,
    cast(null as {{ type_float() }}) as total_node_runtime,
    cast(null as {{ type_int() }}) as rows_affected,
    cast(null as {{ type_string() }}) as materialization,
    cast(null as {{ type_string() }}) as schema,
    cast(null as {{ type_string() }}) as name
where 1 = 0

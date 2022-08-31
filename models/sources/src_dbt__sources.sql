select
    cast(null as {{ type_string() }}) command_invocation_id,
    cast(null as {{ type_string() }}) node_id,
    cast(null as {{ type_timestamp() }}) run_started_at,
    cast(null as {{ type_string() }}) database,
    cast(null as {{ type_string() }}) schema,
    cast(null as {{ type_string() }}) source_name,
    cast(null as {{ type_string() }}) loader,
    cast(null as {{ type_string() }}) name,
    cast(null as {{ type_string() }}) identifier,
    cast(null as {{ type_string() }}) loaded_at_field,
    cast(null as {{ type_json() }}) freshness
where 1 = 0

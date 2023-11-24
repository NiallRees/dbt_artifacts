{#- BOOLEAN -#}

{% macro type_boolean() %}
    {{ return(adapter.dispatch('type_boolean', 'dbt_artifacts')()) }}
{% endmacro %}

{% macro default__type_boolean() %}
   {{ return(api.Column.translate_type("boolean")) }}
{% endmacro %}

{#- JSON -#}

{% macro type_json() %}
    {{ return(adapter.dispatch('type_json', 'dbt_artifacts')()) }}
{% endmacro %}

{% macro default__type_json() %}
   {{ return(api.Column.translate_type("string")) }}
{% endmacro %}

{% macro snowflake__type_json() %}
   object
{% endmacro %}

{% macro bigquery__type_json() %}
   json
{% endmacro %}

{% macro redshift__type_json() %}
    varchar(max)
{% endmacro %}

{#- ARRAY -#}

{% macro type_array() %}
    {{ return(adapter.dispatch('type_array', 'dbt_artifacts')()) }}
{% endmacro %}

{% macro default__type_array() %}
   {{ return(api.Column.translate_type("string")) }}
{% endmacro %}

{% macro snowflake__type_array() %}
   array
{% endmacro %}

{% macro bigquery__type_array() %}
   array<string>
{% endmacro %}

{% macro redshift__type_array() %}
    varchar(max)
{% endmacro %}

{% macro type_string() %}
    {{ return(adapter.dispatch('type_string', 'dbt_artifacts')()) }}
{% endmacro %}

{% macro default__type_string() %}
   {{ return(api.Column.translate_type("string")) }}
{% endmacro %}

{% macro redshift__type_string() %}
    varchar(max)
{% endmacro %}

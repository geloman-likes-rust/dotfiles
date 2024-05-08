return function(luasnip)
    local snippet = luasnip.snippet
    local t = luasnip.text_node
    return {
        -- [Unit] - Unit Directives
        snippet('[Unit]', t('[Unit]')),
        snippet('Description', t('Description=')),
        snippet('Documentation', t('Documentation=')),
        snippet('Requires', t('Requires=')),
        snippet('Wants', t('Wants=')),
        snippet('Requisite', t('Requisite=')),
        snippet('Conflicts', t('Conflicts=')),
        snippet('Before', t('Before=')),
        snippet('After', t('After=')),
        snippet('OnFailure', t('OnFailure=')),
        snippet('OnFailureJobMode', t('OnFailureJobMode=')),
        snippet('IgnoreOnIsolate', t('IgnoreOnIsolate=')),

        -- [Service] - Service Directives
        snippet('[Service]', t('[Service]')),
        snippet('Type', t('Type=')),
        snippet('ExecStart', t('ExecStart=')),
        snippet('ExecStartPre', t('ExecStartPre=')),
        snippet('ExecStartPost', t('ExecStartPost=')),
        snippet('ExecReload', t('ExecReload=')),
        snippet('ExecStop', t('ExecStop=')),
        snippet('ExecStopPost', t('ExecStopPost=')),
        snippet('TimeoutStartSec', t('TimeoutStartSec=')),
        snippet('TimeoutStopSec', t('TimeoutStopSec=')),
        snippet('Restart', t('Restart=')),
        snippet('RestartSec', t('RestartSec=')),
        snippet('StartLimitIntervalSec', t('StartLimitIntervalSec=')),
        snippet('StartLimitBurst', t('StartLimitBurst=')),
        snippet('MemoryLimit', t('MemoryLimit=')),
        snippet('MemorySoftLimit', t('MemorySoftLimit=')),
        snippet('CPUQuota', t('CPUQuota=')),

        -- [Install] - Install Directives
        snippet('[Install]', t('[Install]')),
        snippet('Also', t('Also=')),
        snippet('Alias', t('Alias=')),
        snippet('WantedBy', t('WantedBy=')),
        snippet('RequiredBy', t('RequiredBy=')),

        -- Generic  - Generic Directives
        snippet('PermissionsStartOnly', t('PermissionsStartOnly=')),
        snippet('WorkingDirectory', t('WorkingDirectory=')),
        snippet('EnvironmentFile', t('EnvironmentFile=')),
        snippet('Environment', t('Environment=')),
        snippet('Group', t('Group=')),
        snippet('User', t('User=')),
        snippet('UMask', t('UMask=')),
    }
end

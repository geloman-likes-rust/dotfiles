return {
    'mfussenegger/nvim-dap',
    cmd = { "DapContinue", "DapShowLog", "DapToggleRepl", "DapToggleBreakpoint", "DapLoadLaunchJSON", "DapRestartFrame",
        "DapSetLogLevel", "DapStepInto", "DapStepOut", "DapStepOver", "DapTerminate" },
    dependencies = { "rcarriga/nvim-dap-ui" }
}

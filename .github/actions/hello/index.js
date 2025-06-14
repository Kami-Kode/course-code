const core = require('@actions/core');
const github = require('@actions/github');
try{
    throw new Error("error test");
    core.debug("debug message");
    core.warning("warning message");
    core.error("error message");

    const name = core.getInput('who_to_greet');

    console.log(`hello ${name} `)

    const time = new Date();
    core.setOutput("time",time.toTimeString());

    core.exportVariable("HELLO_TIME", time );
    core.startGroup("Logging github context");
    console.log(JSON.stringify(github.context,null,2));
    core.endGroup();
}catch(error){
    core.setFailed(error.message);
}
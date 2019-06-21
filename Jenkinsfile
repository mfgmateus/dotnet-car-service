@Library("projetas-library") _

PROJECT_NAME = "dotnet-car-service"
PROJECT_VERSION = "${env.BRANCH_NAME}:${BUILD_ID}"

def config = [
        activeBranches: ['dev', 'qa', 'master'],
        nodeLabel     : 'jenkins-slave.projetas.com.br',
        name          : 'Dotnet Car Service',
        image         : PROJECT_NAME,
        stack         : PROJECT_NAME,
        buildExtras   : '',
        key           : "${PROJECT_NAME}:${PROJECT_VERSION}",
        version       : PROJECT_VERSION,
        branch        : env.BRANCH_NAME,
        language      : 'cs',
        sonarExtras   : '',
        testExtras    : '',
        swarms        : [
                dev   : 'node01.docker.projetas.com.br',
                qa    : 'node01.docker.projetas.com.br',
                master: 'node01.docker.projetas.com.br',
        ]
]

dotnetCorePipeline(config)

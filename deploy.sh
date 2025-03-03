#!/bin/bash
set -e

LOG_FILE="deploy.log"
DEPLOY_FLAG=false
ROLLBACK_FLAG=false
SIMULATE_FAILURE=false

log(){
    echo "$(date + '%Y-%m-%d %H:%M:%S') - $1" | tee -a "$LOG_FILE"
}

deploy(){
    log "Starting deployment..."
    
    if [ "$SIMULATE_FAILURE" = true ]; then
        log "Simulating deployment failure..."
        exit 1
    fi

    log "Deployment completed successfully"
}

rollback(){
    log "starting rollback..."
    log "Rollback completed successfully"
}

# script handling

for arg in "$@"
do 
    case $arg in
        --deploy)
        DEPLOY_FLAG=true
        shift
        ;;
        --rollback)
        ROLLBACK_FLAG=true
        shift
        ;;
        --simulate-failure=true)
        SIMULATE_FAILURE=true
        shift
        ;;
        --simulate-failure=false)
        SIMULATE_FAILURE=false
        shift
        ;;
        *)
        shift
        ;;
    esac
done 

if $DEPLOY_FLAG; then
    deploy || {
        log "Deployment failed. Initiating rollback..."
        rollback
    }
fi

if $ROLLBACK_FLAG; then
    rollback
fi
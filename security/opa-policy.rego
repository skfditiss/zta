package kubernetes.admission

deny[msg] {
    input.request.kind.kind == "Pod"
    input.request.object.spec.containers[_].image == "latest"
    msg := "Using 'latest' tag is not allowed"
}

deny[msg] {
    input.request.kind.kind == "Pod"
    input.request.object.spec.containers[_].securityContext.runAsRoot
    msg := "Running containers as root is not allowed"
}

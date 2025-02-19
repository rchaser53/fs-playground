
1. kube-apiserver に--allow-privileged オプションを足す
    or
2. Podのセキュリティアドミッションとやらを変更する？
https://kubernetes.io/ja/docs/concepts/security/pod-security-admission/



1はkubeadamなどk8sのホスティング方法によって、やり方が異なる可能性がありそう

Your Kubernetes cluster must allow privileged pods (i.e. --allow-privileged flag must be set to true for both the API server and the kubelet). Moreover, as stated in the mount propagation docs, the Docker daemon of the cluster nodes must allow shared mounts.
data "tls_certificate" "eks_oidc_tls_certificate" {

  url = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}

resource "aws_iam_openid_connect_provider" "eks_oicd" {
  client_id_list = [
    "sts.amazonaws.com"
  ]

  thumbprint_list = data.tls_certificate.eks_oidc_tls_certificate.certificates[*].shal_fingerprint
  url             = data.tls_certificate.eks_oidc_tls_certificate.url

}
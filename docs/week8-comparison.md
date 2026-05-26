# Week 8 Comparison: On-Premise Docker vs. Cloud Run

| Dimension | On-Premise Docker (Weeks 3–5) | Cloud Run (Week 8) |
|---|---|---|
| Infrastructure setup | Needed multiple VMs with Docker installed on each one. | No servers to manage. Cloud Run runs the container for me. |
| Deployment command | Used SSH, docker build, and docker run. | Used gcloud run deploy through GitHub Actions. |
| TLS / HTTPS | Not configured manually. | HTTPS is automatically provided with the .run.app URL. |
| Scaling approach | Manual scaling by adding or changing VMs. | Auto-scales based on traffic and can scale to zero. |
| Port management | Had to manage ports like 5000, 5001, and 5002. | Cloud Run handles routing through the public HTTPS URL. |
| Cost when idle | VM keeps running even with no traffic. | Can scale to zero when idle. |
| Rollback | Would need to manually redeploy an older image/version. | Easier because images are tagged by commit SHA. |
| Secrets management | Used GitHub Secrets and SSH keys. | Uses OIDC instead of long-term SSH keys. |

## Reflection Questions

### Q1
The on-premise Docker approach required more manual steps. I had to manage VMs, SSH access, Docker installation, ports, and container restarts. Cloud Run removed most of that because I only needed to deploy the image and let Google handle the service.

### Q2
For on-premise Docker, it could be harder to prove exactly which version is running unless I carefully tracked the image or deployment logs. With Cloud Run, the image is tagged with the commit SHA, so I can connect the running container back to a specific GitHub commit.

### Q3
Scale-to-zero helps security because the app is not constantly running when nobody is using it. That means there is less active attack surface compared to a VM that stays online 24/7.

### Q4
OIDC removed the need to store long-term SSH private keys in GitHub Secrets. This reduces the risk of a stolen key being reused by an attacker.

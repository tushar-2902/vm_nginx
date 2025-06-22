# Azure VM Deployment with Terraform and NGINX Setup

![Terraform](https://img.shields.io/badge/Tool-Terraform-5C4EE5?style=for-the-badge&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Cloud-Azure-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![NGINX](https://img.shields.io/badge/NGINX-Web%20Server-green?style=for-the-badge&logo=nginx&logoColor=white)
![Key Vault](https://img.shields.io/badge/Security-KeyVault-blue?style=for-the-badge&logo=microsoftazure)

---

## 🚀 Overview

> A production-level IaC project using **Terraform** to provision multiple **Azure Linux VMs** with automated **NGINX** setup and secrets fetched from **Azure Key Vault**.

📦 Designed with **modular Terraform structure**  
🔐 Fully automated and secure using **GitOps principles**  
🧱 Scalable, reusable, and ready for **CI/CD pipelines**

---

## 📁 Folder Structure

```bash
vm_nginx/
├── azurerm_public_ip/
├── azurerm_resorce/
├── azurerm_subnet/
├── azurerm_virtual_machine/
├── azurerm_virtual_network/
├── env/
│   ├── .gitignore
│   ├── .terraform/
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
├── main.tf
├── provider.tf
├── terraform.lock.hcl
└── vm.tf
```

---

## 💡 Key Features

- 🚀 Provision **multiple VMs** using `for_each`
- 🔐 Securely fetch secrets from **Azure Key Vault**
- 🌐 Install **NGINX** via remote shell
- ⚙️ Fully modular & production-friendly `.tf` structure

---

## 🧪 How to Deploy

```bash
# 1. Authenticate Azure CLI
az login

# 2. Initialize
cd env
terraform init

# 3. Plan
terraform plan

# 4. Apply
terraform apply -auto-approve

# 5. Destroy
terraform destroy -auto-approve
```

> 🔑 Ensure Key Vault contains `adminname1` and `adminpass1` secrets.

---

## 📸 Screenshot

<img src="./screenshots/terraform_destroy.png" width="700"/>

---

## 📄 .gitignore

```
.terraform/
terraform.tfstate
terraform.tfstate.backup
terraform.lock.hcl
```

---

## 👨‍💻 Author

**Tushar Mishra** – DevOps Engineer  
📧 tusharmishra2902@gmail.com  
🔗 [LinkedIn](https://linkedin.com/in/tushar-mishra-02461235a)  
🐙 [GitHub](https://github.com/tushar-2902)

---

## ⚖️ License

[MIT License](https://opensource.org/licenses/MIT)

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0A66C2&height=120&section=footer"/>
</p>

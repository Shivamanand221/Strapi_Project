# InfraPilot

An intelligent infrastructure automation platform that combines cloud infrastructure provisioning with intelligent automation capabilities. InfraPilot streamlines infrastructure deployment, management, and monitoring through a unified interface.

## 🚀 Features

- **Infrastructure as Code (IaC)**: Terraform-based infrastructure provisioning with HCL configurations
- **Automation Engine**: Intelligent workflow automation using TypeScript and JavaScript
- **CLI Tools**: Command-line utilities for infrastructure management and deployment
- **API Integration**: RESTful APIs for seamless integration with existing systems
- **Monitoring & Logging**: Built-in monitoring capabilities for infrastructure health
- **Cloud-Agnostic**: Support for multiple cloud providers (AWS, Azure, GCP)
- **Scripting**: Shell scripts for deployment automation and system configuration

## 📋 Prerequisites

- **Node.js** (v16 or higher)
- **TypeScript** (v4.5 or higher)
- **Terraform** (v1.0 or higher)
- **Git**
- Cloud provider credentials (AWS, Azure, or GCP)

## 💻 Tech Stack

- **Frontend/Backend**: JavaScript (32.1%), TypeScript (31.9%)
- **Infrastructure**: HCL (23.9%) - Terraform configurations
- **Scripting**: Shell (12.1%)
- **Runtime**: Node.js

## 📦 Installation

### Clone the repository

```bash
git clone https://github.com/Shivamanand221/InfraPilot.git
cd InfraPilot
```

### Install dependencies

```bash
npm install
```

### Build the project

```bash
npm run build
```

## 🔧 Configuration

1. **Environment Setup**: Create a `.env` file in the root directory with your cloud provider credentials:

```env
AWS_ACCESS_KEY_ID=your_access_key
AWS_SECRET_ACCESS_KEY=your_secret_key
REGION=us-east-1
```

2. **Terraform Configuration**: Update `terraform/` directory with your infrastructure definitions in HCL format.

3. **Application Config**: Configure application settings in `config/` directory.

## 🚀 Usage

### Running the application

```bash
npm start
```

### Building for production

```bash
npm run build:prod
```

### Running tests

```bash
npm test
```

### Infrastructure deployment

```bash
npm run deploy:infrastructure
```

### Running CLI commands

```bash
npm run cli -- [command] [options]
```

## 📁 Project Structure

```
InfraPilot/
├── src/
│   ├── core/           # Core application logic
│   ├── services/       # Business logic and services
│   ├── api/           # API endpoints
│   ├── cli/           # CLI commands
│   └── utils/         # Utility functions
├── terraform/         # Terraform configurations (HCL)
├── scripts/           # Shell scripts for automation
├── tests/             # Test files
├── config/            # Configuration files
└── dist/              # Compiled output
```

## 🔗 API Endpoints

### Infrastructure Management
- `GET /api/infrastructure` - List all infrastructure resources
- `POST /api/infrastructure/deploy` - Deploy new infrastructure
- `PUT /api/infrastructure/:id` - Update infrastructure
- `DELETE /api/infrastructure/:id` - Delete infrastructure

### Automation
- `POST /api/automation/execute` - Execute automation workflows
- `GET /api/automation/status/:id` - Get workflow status
- `GET /api/automation/logs/:id` - Get workflow logs

## 🧪 Testing

```bash
# Run all tests
npm test

# Run tests with coverage
npm run test:coverage

# Run specific test suite
npm test -- tests/services
```

## 📝 Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `NODE_ENV` | Environment (development, production) | Yes |
| `AWS_ACCESS_KEY_ID` | AWS access key | Conditional |
| `AWS_SECRET_ACCESS_KEY` | AWS secret key | Conditional |
| `REGION` | Cloud region | Yes |
| `LOG_LEVEL` | Logging level (debug, info, warn, error) | No |
| `PORT` | Application port | No |

## 🤝 Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- Terraform documentation for IaC best practices
- Node.js community for excellent libraries and tools
- Cloud provider documentation for API integration

## 📧 Contact

For questions or support, please open an issue on the [GitHub repository](https://github.com/Shivamanand221/InfraPilot/issues).

## 🗺️ Roadmap

- [ ] Support for additional cloud providers (Alibaba Cloud, DigitalOcean)
- [ ] Enhanced monitoring dashboard
- [ ] Automated cost optimization recommendations
- [ ] Multi-region deployment capabilities
- [ ] Advanced RBAC and audit logging
- [ ] Helm chart integration for Kubernetes deployments

---

**Last Updated**: 2026-07-12

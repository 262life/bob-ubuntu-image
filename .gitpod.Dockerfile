FROM  gitpod/workspace-full


# Install custom tools, runtime, etc.
RUN sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable" \
    && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - \
    && sudo apt update \
    && curl -sLO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl \
    && sudo mv kubectl /usr/local/bin/kubectl && sudo chmod 755 /usr/local/bin/kubectl \
    && wget -q https://get.helm.sh/helm-v3.2.4-linux-amd64.tar.gz \
    && tar zxf helm-v3.2.4-linux-amd64.tar.gz \
    && sudo mv linux-amd64/helm /usr/local/bin/helm3 \
    && sudo chmod 755 /usr/local/bin/helm3 \
    && wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb  \
    && sudo apt-get -y install \
            shellcheck \
            apt-transport-https \
            ca-certificates \
            curl \
            software-properties-common \
            docker-ce \
            ./google-chrome-stable_current_amd64.deb \
     && sudo rm -rf /var/lib/apt/lists/* 

# Apply user-specific settings
# Refresh on 2021-01-28




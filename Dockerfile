# 选择运行时基础镜像
FROM openanolis/anolisos:8.6

# 维护人员
MAINTAINER 徐晓伟 xuxiaowei@xuxiaowei.com.cn

# 工作空间
WORKDIR /usr/local/dragonwell-17

# 添加镜像
ADD Alibaba_Dragonwell_17.0.1.0.1+12_x64_linux.tar.gz .
RUN mv jdk-17.0.1.0.1+12/* .

# 设置环境变量
ENV JAVA_HOME=/usr/local/dragonwell-17
ENV JAVA_VERSION=17.0.1
ENV DRAGONWELL_VERSION=17.0.1.0.1+12
ENV PATH=/usr/local/dragonwell-17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

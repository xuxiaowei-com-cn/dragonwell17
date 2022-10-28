# 选择运行时基础镜像
FROM openanolis/anolisos:8.6

# 维护人员
MAINTAINER 徐晓伟 xuxiaowei@xuxiaowei.com.cn

# 工作空间
WORKDIR /usr/local/dragonwell-17

# 添加镜像
ADD Alibaba_Dragonwell_Standard_17.0.4.0.4+8_x64_linux.tar.gz .
RUN mv dragonwell-17.0.4.0.4+8-GA/* .

# 设置环境变量
ENV JAVA_HOME=/usr/local/dragonwell-17
ENV JAVA_VERSION=17.0.4
ENV DRAGONWELL_VERSION=17.0.4.0.4+8
ENV PATH=/usr/local/dragonwell-17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

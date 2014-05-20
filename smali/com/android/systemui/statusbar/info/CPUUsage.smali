.class public Lcom/android/systemui/statusbar/info/CPUUsage;
.super Lcom/android/systemui/statusbar/info/TextInfo;
.source "CPUUsage.java"


# instance fields
.field private conf:Lvenom/common/settings;

.field private lastIdle:[J

.field private lastTotal:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/info/TextInfo;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V

    new-instance v1, Lvenom/common/settings;

    invoke-direct {v1}, Lvenom/common/settings;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/info/CPUUsage;->conf:Lvenom/common/settings;

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/CPUUsage;->conf:Lvenom/common/settings;

    iget v1, v1, Lvenom/common/settings;->CPU_CORES:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/systemui/statusbar/info/CPUUsage;->lastTotal:[J

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/CPUUsage;->conf:Lvenom/common/settings;

    iget v1, v1, Lvenom/common/settings;->CPU_CORES:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/systemui/statusbar/info/CPUUsage;->lastIdle:[J

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/info/CPUUsage;->conf:Lvenom/common/settings;

    iget v1, v1, Lvenom/common/settings;->CPU_CORES:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/info/CPUUsage;->lastTotal:[J

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/CPUUsage;->lastIdle:[J

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private cpuUsage(I[Ljava/lang/String;)I
    .locals 15

    const/4 v11, 0x4

    aget-object v11, p2, v11

    const/16 v12, 0xa

    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    const-wide/16 v9, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p2

    array-length v12, v0

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/systemui/statusbar/info/CPUUsage;->lastIdle:[J

    aget-wide v11, v11, p1

    sub-long v1, v6, v11

    iget-object v11, p0, Lcom/android/systemui/statusbar/info/CPUUsage;->lastTotal:[J

    aget-wide v11, v11, p1

    sub-long v3, v9, v11

    iget-object v11, p0, Lcom/android/systemui/statusbar/info/CPUUsage;->lastTotal:[J

    aput-wide v9, v11, p1

    iget-object v11, p0, Lcom/android/systemui/statusbar/info/CPUUsage;->lastIdle:[J

    aput-wide v6, v11, p1

    sub-long v11, v3, v1

    long-to-float v11, v11

    long-to-float v12, v3

    div-float/2addr v11, v12

    const/high16 v12, 0x42c8

    mul-float/2addr v11, v12

    float-to-int v11, v11

    return v11

    :cond_0
    aget-object v8, p2, v11

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    const/16 v13, 0xa

    invoke-static {v8, v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v13

    add-long/2addr v9, v13

    goto :goto_1
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    const v0, 0x7f020551

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 15

    const/4 v11, 0x4

    const/4 v14, -0x1

    new-array v9, v11, [I

    new-array v10, v11, [Ljava/lang/String;

    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v11, "/proc/stat"

    const-string v12, "r"

    invoke-direct {v8, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v11, 0x0

    :try_start_1
    invoke-virtual {v8, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/info/CPUUsage;->conf:Lvenom/common/settings;

    iget v11, v11, Lvenom/common/settings;->CPU_CORES:I

    if-lt v4, v11, :cond_0

    const/4 v4, 0x0

    :goto_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/info/CPUUsage;->conf:Lvenom/common/settings;

    iget v11, v11, Lvenom/common/settings;->CPU_CORES:I

    if-lt v4, v11, :cond_3

    const v11, 0x7f0a0136

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/info/CPUUsage;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, ""

    const/4 v4, 0x0

    :goto_2
    iget-object v11, p0, Lcom/android/systemui/statusbar/info/CPUUsage;->conf:Lvenom/common/settings;

    iget v11, v11, Lvenom/common/settings;->CPU_CORES:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-lt v4, v11, :cond_5

    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    return-object v7

    :catch_0
    move-exception v3

    const-string v7, "/proc/stat error!"

    goto :goto_3

    :cond_0
    :try_start_3
    const-string v1, ""
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    :goto_4
    :try_start_5
    const-string v11, "[ ]+"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    aget-object v11, v6, v11

    const-string v12, "cpu"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    :try_start_6
    aget-object v11, v6, v11

    const-string v12, "cpu"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "/sys/devices/system/cpu/cpu"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/online"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/info/CPUUsage;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v0, v6}, Lcom/android/systemui/statusbar/info/CPUUsage;->cpuUsage(I[Ljava/lang/String;)I

    move-result v11

    aput v11, v9, v0

    :cond_1
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, -0x1

    aput v11, v9, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_1
    move-exception v11

    goto :goto_5

    :cond_3
    :try_start_7
    aget v11, v9, v4

    if-ne v11, v14, :cond_4

    const v11, 0x7f0a0137

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/info/CPUUsage;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    aget v12, v9, v4

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    :catch_2
    move-exception v3

    :try_start_8
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :goto_7
    const-string v7, "CPU usage error!"

    goto/16 :goto_3

    :cond_5
    :try_start_9
    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aget-object v13, v10, v4

    aput-object v13, v11, v12

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aget-object v14, v10, v4

    aput-object v14, v12, v13

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object v7

    goto :goto_8

    :catch_3
    move-exception v11

    goto/16 :goto_4

    :catch_4
    move-exception v11

    goto/16 :goto_3

    :catch_5
    move-exception v11

    goto :goto_7
.end method

.method protected getUpdateInterval()J
    .locals 2

    const-wide/16 v0, 0x5dc

    return-wide v0
.end method

.method protected onStartIntenal()V
    .locals 0

    return-void
.end method

.method protected onStopIntenal()V
    .locals 0

    return-void
.end method

.class public Lcom/android/systemui/statusbar/info/CPUFreq;
.super Lcom/android/systemui/statusbar/info/TextInfo;
.source "CPUFreq.java"


# instance fields
.field private conf:Lvenom/common/settings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/info/TextInfo;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V

    new-instance v0, Lvenom/common/settings;

    invoke-direct {v0}, Lvenom/common/settings;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/info/CPUFreq;->conf:Lvenom/common/settings;

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    const v0, 0x7f020551

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/info/CPUFreq;->conf:Lvenom/common/settings;

    iget v8, v8, Lvenom/common/settings;->CPU_CORES:I

    new-array v1, v8, [Ljava/lang/String;

    const v8, 0x7f0a0138

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/info/CPUFreq;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v8, 0x7f0a0137

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/info/CPUFreq;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/info/CPUFreq;->conf:Lvenom/common/settings;

    iget v8, v8, Lvenom/common/settings;->CPU_CORES:I

    if-lt v3, v8, :cond_0

    const v8, 0x7f0a0135

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/info/CPUFreq;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    const/4 v3, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/info/CPUFreq;->conf:Lvenom/common/settings;

    iget v8, v8, Lvenom/common/settings;->CPU_CORES:I

    if-lt v3, v8, :cond_3

    return-object v7

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/sys/devices/system/cpu/cpu"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/online"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/info/CPUFreq;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v2, ""

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/sys/devices/system/cpu/cpu"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cpufreq/scaling_cur_freq"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/info/CPUFreq;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/info/CPUFreq;->RemoveLast3(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_2
    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    aput-object v4, v1, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v3

    goto :goto_3

    :cond_2
    aput-object v4, v1, v3

    goto :goto_3

    :cond_3
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    aget-object v9, v1, v3

    aput-object v9, v8, v12

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    aget-object v10, v1, v3

    aput-object v10, v9, v12

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method protected getUpdateInterval()J
    .locals 2

    const-wide/16 v0, 0x7d0

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

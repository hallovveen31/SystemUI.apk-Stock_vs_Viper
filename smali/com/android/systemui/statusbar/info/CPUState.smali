.class public Lcom/android/systemui/statusbar/info/CPUState;
.super Lcom/android/systemui/statusbar/info/TextInfo;
.source "CPUState.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/info/TextInfo;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    const v0, 0x7f020551

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 6

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/info/CPUState;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/info/CPUState;->RemoveLast3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/info/CPUState;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/info/CPUState;->RemoveLast3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/info/CPUState;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0a012d

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/info/CPUState;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected getUpdateInterval()J
    .locals 2

    const-wide/16 v0, 0x1388

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

.class public Lcom/android/systemui/statusbar/info/RAMInfo;
.super Lcom/android/systemui/statusbar/info/TextInfo;
.source "RAMInfo.java"


# instance fields
.field private final MEMTOTAL_PATTERN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/info/TextInfo;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V

    const-string v0, "MemTotal[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"

    iput-object v0, p0, Lcom/android/systemui/statusbar/info/RAMInfo;->MEMTOTAL_PATTERN:Ljava/lang/String;

    return-void
.end method

.method private matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/ProcessBuilder;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "/system/bin/cat"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4, p2, p3}, Ljava/util/Scanner;->findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v4}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    move-result-object v5

    return-object v5

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    const v0, 0x7f020551

    return v0
.end method

.method public getMemoryTotal()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v2, "/proc/meminfo"

    const-string v3, "MemTotal[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"

    const/16 v4, 0x3e8

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/info/RAMInfo;->matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_0
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getText()Ljava/lang/String;
    .locals 10

    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/info/RAMInfo;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v6, v5, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v8, 0x100000

    div-long v2, v6, v8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/info/RAMInfo;->getMemoryTotal()I

    move-result v6

    div-int/lit16 v6, v6, 0x400
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v6, 0x1

    :goto_0
    const v6, 0x7f0a012c

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/info/RAMInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v4

    const/4 v0, 0x0

    goto :goto_0
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

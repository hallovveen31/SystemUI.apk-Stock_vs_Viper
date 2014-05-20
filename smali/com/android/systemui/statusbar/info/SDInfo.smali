.class public Lcom/android/systemui/statusbar/info/SDInfo;
.super Lcom/android/systemui/statusbar/info/TextInfo;
.source "SDInfo.java"


# instance fields
.field private conf:Lvenom/common/settings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/info/TextInfo;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V

    new-instance v0, Lvenom/common/settings;

    invoke-direct {v0}, Lvenom/common/settings;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/info/SDInfo;->conf:Lvenom/common/settings;

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    const v0, 0x7f020552

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 14

    const-wide/16 v0, 0x400

    const-wide/32 v2, 0x100000

    const-wide/16 v4, -0x1

    const-wide/16 v7, -0x1

    new-instance v6, Landroid/os/StatFs;

    const-string v9, "/data"

    invoke-direct {v6, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v11, v11

    mul-long v4, v9, v11

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v11, v11

    mul-long v7, v9, v11

    const v9, 0x7f0a012e

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/info/SDInfo;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/32 v12, 0x100000

    div-long v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-wide/32 v12, 0x100000

    div-long v12, v7, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method protected getUpdateInterval()J
    .locals 2

    const-wide/16 v0, 0x2710

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

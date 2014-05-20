.class public Lcom/android/systemui/statusbar/policy/LocationController;
.super Landroid/content/BroadcastReceiver;
.source "LocationController.java"


# static fields
.field private static final mHighPowerRequestAppOpArray:[I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAreActiveLocationRequests:Z

.field private mContext:Landroid/content/Context;

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/LocationController;->mHighPowerRequestAppOpArray:[I

    return-void
.end method

.method private areActiveHighPowerLocationRequests()Z
    .locals 10

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v9, Lcom/android/systemui/statusbar/policy/LocationController;->mHighPowerRequestAppOpArray:[I

    invoke-virtual {v8, v9}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_0

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_2
    return v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private refreshViews()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAreActiveLocationRequests:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "location"

    const v2, 0x7f020410

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0093

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateActiveLocationRequests()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAreActiveLocationRequests:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->areActiveHighPowerLocationRequests()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAreActiveLocationRequests:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAreActiveLocationRequests:Z

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->refreshViews()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->updateActiveLocationRequests()V

    :cond_0
    return-void
.end method

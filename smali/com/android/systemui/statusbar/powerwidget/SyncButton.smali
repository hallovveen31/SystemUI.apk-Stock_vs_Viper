.class public Lcom/android/systemui/statusbar/powerwidget/SyncButton;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "SyncButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncButton"


# instance fields
.field private mSyncObserver:Landroid/content/SyncStatusObserver;

.field private mSyncObserverHandle:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/SyncButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/SyncButton$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/SyncButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserver:Landroid/content/SyncStatusObserver;

    const v0, 0x7f0a0150

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->setTitle(I)V

    return-void
.end method

.method private getBackgroundDataState()Z
    .locals 2

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 2

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->getBackgroundDataState()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->booleanToState(Z)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getIconForState(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f020528

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020529

    goto :goto_0
.end method

.method protected onToggleClick()V
    .locals 5

    const/4 v4, 0x1

    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->getBackgroundDataState()Z

    move-result v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    invoke-static {v4}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    invoke-static {v4}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void
.end method

.method protected onToggleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected setup(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->setup(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const-string v0, "SyncButton"

    const-string v1, "Unregistering sync state listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "SyncButton"

    const-string v1, "Registering sync state listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    goto :goto_0
.end method

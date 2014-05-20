.class Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;
.super Landroid/database/ContentObserver;
.source "StatusBarIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlobalSettingsObserver"
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->sInstance:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->sInstance:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->sInstance:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    return-object v0
.end method


# virtual methods
.method attach(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->observe()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method detach(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->unobserve()V

    :cond_0
    return-void
.end method

.method observe()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_systemui_notificationcount"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_systemui_notificationcount"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    #setter for: Lcom/android/systemui/statusbar/StatusBarIconView;->mShowNotificationCount:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$0(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V

    #getter for: Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$1(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v4

    #calls: Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;Z)Z
    invoke-static {v0, v4, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$2(Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/internal/statusbar/StatusBarIcon;Z)Z

    goto :goto_0
.end method

.method unobserve()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

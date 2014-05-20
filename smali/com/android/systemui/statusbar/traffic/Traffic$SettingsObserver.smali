.class Lcom/android/systemui/statusbar/traffic/Traffic$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "Traffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/traffic/Traffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/traffic/Traffic;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/traffic/Traffic;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/traffic/Traffic$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/traffic/Traffic$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    #getter for: Lcom/android/systemui/statusbar/traffic/Traffic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/traffic/Traffic;->access$1(Lcom/android/systemui/statusbar/traffic/Traffic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_speed_view"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "tweaks_speed_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/traffic/Traffic$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    #calls: Lcom/android/systemui/statusbar/traffic/Traffic;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/traffic/Traffic;->access$0(Lcom/android/systemui/statusbar/traffic/Traffic;)V

    return-void
.end method

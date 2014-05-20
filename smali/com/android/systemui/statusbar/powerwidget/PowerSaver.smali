.class public Lcom/android/systemui/statusbar/powerwidget/PowerSaver;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "PowerSaver.java"


# static fields
.field private static final KEY_USER_POWERSAVER_ENABLE:Ljava/lang/String; = "user_powersaver_enable"

.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final POWERSAVER_DISABLED:Ljava/lang/String;

.field private final POWERSAVER_ENABLED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->OBSERVED_URIS:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "user_powersaver_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const-string v0, "com.htc.server.htcpowersaver.action.ON"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->POWERSAVER_ENABLED:Ljava/lang/String;

    const-string v0, "com.htc.server.htcpowersaver.action.OFF"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->POWERSAVER_DISABLED:Ljava/lang/String;

    const v0, 0x7f0a0148

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->setTitle(I)V

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_powersaver_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->booleanToState(Z)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected getIconForState(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f020592

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020591

    goto :goto_0
.end method

.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void
.end method

.method protected onSettingChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void
.end method

.method protected onToggleClick()V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    if-ne v4, v5, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_powersaver_enable"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_powersaver_enable_bk"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.htcpowermanager.powersaver.ON_NOTIF_TOGGLE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "toggle_state"

    if-ne v1, v3, :cond_1

    move v4, v3

    :goto_1
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-ne v1, v3, :cond_2

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->booleanToState(Z)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2
.end method

.method protected onToggleLongClick()Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.htcpowermanager"

    const-string v3, "com.htc.htcpowermanager.powersaver.PowerSaverActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/PowerSaver;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

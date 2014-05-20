.class public Lcom/android/systemui/statusbar/powerwidget/DNDButton;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "DNDButton.java"


# static fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/DNDButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/DNDButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "htc_dnd_feature_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const v0, 0x7f0a00cd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/DNDButton;->setTitle(I)V

    return-void
.end method


# virtual methods
.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/DNDButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_dnd_feature_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/DNDButton;->booleanToState(Z)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    const-string v1, "Venom"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DND State: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected getIconForState(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f02052c

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02052d

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

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/DNDButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected onSettingChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/DNDButton;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/DNDButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void
.end method

.method protected onToggleClick()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/DNDButton;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    if-ne v3, v4, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Venom"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "enabled: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/DNDButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_dnd_feature_enabled"

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/DNDButton;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.settings.action.dnd.QS_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected onToggleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.settings.DND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/DNDButton;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/DNDButton;->collapseStatusBar()V

    const/4 v1, 0x1

    return v1
.end method

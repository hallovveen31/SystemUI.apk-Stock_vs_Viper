.class public Lcom/android/systemui/statusbar/powerwidget/VibrationMode;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "VibrationMode.java"


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;

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

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->OBSERVED_URIS:Ljava/util/List;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->INTENT_FILTER:Landroid/content/IntentFilter;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const v0, 0x7f0a0145

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->setTitle(I)V

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-object v0
.end method

.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 3

    const/4 v1, 0x1

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->booleanToState(Z)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getIconForState(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0205f4

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0205f3

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

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void
.end method

.method protected onToggleClick()V
    .locals 3

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    goto :goto_0
.end method

.method protected onToggleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/VibrationMode;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

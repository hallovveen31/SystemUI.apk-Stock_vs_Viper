.class public Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "SoundEnhancerButton.java"


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter; = null

.field private static final LAST_ACTIVE_EFFECT:Ljava/lang/String; = "tweaks_lastactiveeffect_id"

.field private static final mEffectIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mEffectIndex:I

.field private mEffectValues:[I

.field private mEffectValuesIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.htc.intent.action.SOUNDEFFECT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIds:Ljava/util/HashMap;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIds:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x336

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIds:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x335

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIds:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x334

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIndex:I

    const/4 v0, 0x7

    new-array v0, v0, [I

    aput v1, v0, v1

    aput v2, v0, v2

    aput v4, v0, v4

    aput v5, v0, v5

    const/4 v1, 0x5

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectValues:[I

    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectValuesIndex:I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->DEBUG:Z

    const-string v0, "SoundEnhancerButton"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->TAG:Ljava/lang/String;

    const v0, 0x7f0a0171

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->setTitle(I)V

    return-void
.end method

.method private findCurrentState()V
    .locals 6

    const/16 v5, 0x384

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_lastactiveeffect_id"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->getAudionManager()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getGlobalEffect()I

    move-result v1

    if-ne v1, v5, :cond_2

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIndex:I

    :cond_2
    const/16 v2, 0x320

    if-eq v1, v2, :cond_3

    const/16 v2, -0x64

    if-ne v1, v2, :cond_4

    :cond_3
    iput v4, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIndex:I

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIndex:I

    goto :goto_0
.end method

.method private getResourceByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string v0, "Venom"

    const-string v1, "Package name..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Venom"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mContext: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Venom"

    const-string v1, "done."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setSoundEffect(I)V
    .locals 3

    const/16 v0, 0x320

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->getAudionManager()Landroid/media/AudioManager;

    move-result-object v1

    const-string v2, "VenomSound"

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->setGlobalEffect(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_lastactiveeffect_id"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :pswitch_0
    const/16 v0, 0x320

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x384

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAudionManager()Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-object v0
.end method

.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->findCurrentState()V

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIndex:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected getIconForState(Z)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIndex:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "icon_launcher_no_effects"

    const-string v1, "drawable"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->getResourceByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const-string v0, "icon_launcher_no_effects"

    const-string v1, "drawable"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->getResourceByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const-string v0, "icon_launcher_beats_red"

    const-string v1, "drawable"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->getResourceByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const-string v0, "icon_launcher_srs"

    const-string v1, "drawable"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->getResourceByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const-string v0, "icon_launcher_dolby"

    const-string v1, "drawable"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->getResourceByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_4
    const-string v0, "icon_launcher_movie"

    const-string v1, "drawable"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->getResourceByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_5
    const-string v0, "icon_launcher_voice"

    const-string v1, "drawable"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->getResourceByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_6
    const-string v0, "icon_launcher_equalizer"

    const-string v1, "drawable"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->getResourceByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected getIndicatorsCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected getIndicatorsProgress()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIndex:I

    return v0
.end method

.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->findCurrentState()V

    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIndex:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectValues:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    :goto_2
    return-void

    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIndex:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectValues:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectValuesIndex:I

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onToggleClick()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectValuesIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectValuesIndex:I

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectValuesIndex:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectValues:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectValuesIndex:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectValues:[I

    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectValuesIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIndex:I

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIndex:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIndex:I

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->mEffectIndex:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->setSoundEffect(I)V

    return-void
.end method

.method protected onToggleLongClick()Z
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.m0narx.soundenhancer"

    const-string v3, "com.m0narx.soundenhancer.main"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/SoundEnhancerButton;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.class public Lcom/android/systemui/statusbar/powerwidget/SoundButton;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "SoundButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    }
.end annotation


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter; = null

.field private static final VIBRATE_DURATION:I = 0xfa


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mRingerValues:[I

.field private mRingerValuesIndex:I

.field private final mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private mRingersIndex:I

.field private final mSilentRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private final mSoundRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private final mSoundVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private final mVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSilentRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    new-instance v3, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v4, p0

    move v5, v9

    move v7, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    new-instance v3, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v4, p0

    move v5, v9

    move v7, v6

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    new-instance v7, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v8, p0

    move v10, v9

    move v11, v6

    move v12, v9

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    new-array v0, v14, [Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSilentRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v1, v0, v9

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v1, v0, v13

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    new-array v0, v14, [I

    aput v9, v0, v9

    aput v6, v0, v6

    aput v13, v0, v13

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    const v0, 0x7f0a014e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->setTitle(I)V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->ensureAudioManager()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private ensureAudioManager()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    return-void
.end method

.method private findCurrentState()V
    .locals 9

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->ensureAudioManager()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "vibrate_in_silent"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_1

    move v2, v1

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    const/4 v3, 0x0

    :cond_0
    :goto_1
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    const/4 v6, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    array-length v1, v1

    if-lt v6, v1, :cond_4

    :goto_3
    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    const/4 v2, 0x1

    if-nez v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_0

    if-ne v4, v1, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aget-object v1, v1, v6

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-object v0
.end method

.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->findCurrentState()V

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

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
        :pswitch_0
    .end packed-switch
.end method

.method protected getIconForState(Z)I
    .locals 2

    const v0, 0x7f020594

    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f0205f4

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020595

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020596

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getIndicatorsCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getIndicatorsProgress()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    return v0
.end method

.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->findCurrentState()V

    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    :goto_2
    return-void

    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onToggleClick()V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->execute()V

    return-void
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

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

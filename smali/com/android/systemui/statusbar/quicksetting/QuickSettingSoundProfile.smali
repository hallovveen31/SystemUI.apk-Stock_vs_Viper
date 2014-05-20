.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingSoundProfile.java"


# static fields
.field private static final MAX_MODE:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private audioManager:Landroid/media/AudioManager;

.field private handler:Landroid/os/Handler;

.field private imageView:Landroid/widget/ImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private receiverRegister:Z

.field private ringerMode:I

.field private textView:Landroid/widget/TextView;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/systemui/CustomizationUtil;->checkSkuId([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->MAX_MODE:I

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :array_0
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "QuickSettingSoundProfile"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->audioManager:Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->textView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->imageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->receiverRegister:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->ringerMode:I

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->receiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->vibrator:Landroid/os/Vibrator;

    const-string v0, "sound_profile"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->nextProfileState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->updateSoundProfile(I)V

    return-void
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x2080098

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00cb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private nextProfileState()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setContentView(Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v2, "QuickSettingSoundProfile"

    const-string v4, "!!!!!set content view error"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :goto_0
    return v2

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->textView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setIntermediateEnabled(Z)V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->audioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_2

    const-string v2, "QuickSettingSoundProfile"

    const-string v4, "!!!!!initialize content view error"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->updateSoundProfile(I)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->receiverRegister:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->receiverRegister:Z

    :cond_3
    const-string v2, "QuickSettingSoundProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setContentView:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_0
.end method

.method private updateSoundContent()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->ringerMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->textView:Landroid/widget/TextView;

    const v2, 0x7f0a00da

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->textView:Landroid/widget/TextView;

    const v2, 0x7f0a00db

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->textView:Landroid/widget/TextView;

    const v2, 0x7f0a00d9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->textView:Landroid/widget/TextView;

    const v2, 0x7f0a00dc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

.method private updateSoundProfile(I)V
    .locals 6

    iget v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->ringerMode:I

    if-ne v3, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f07002b

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const-string v2, "updateSoundProfile:NONE"

    :goto_2
    iput p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->ringerMode:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->imageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iget v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->ringerMode:I

    sget v5, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->MAX_MODE:I

    rem-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->MAX_MODE:I

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->updateSoundContent()V

    const-string v3, "QuickSettingSoundProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    if-nez v1, :cond_4

    const v0, 0x7f020154

    :goto_3
    const-string v2, "updateSoundProfile:AudioMANAGER.RINGER_MODE_SILENT"

    goto :goto_2

    :cond_4
    const v0, 0x7f020155

    goto :goto_3

    :pswitch_1
    if-nez v1, :cond_5

    const v0, 0x7f02013b

    :goto_4
    const-string v2, "updateSoundProfile:AudioManager.RINGER_MODE_VIBRATE"

    goto :goto_2

    :cond_5
    const v0, 0x7f02013c

    goto :goto_4

    :pswitch_2
    if-nez v1, :cond_6

    const v0, 0x7f020156

    :goto_5
    const-string v2, "updateSoundProfile:AudioManager.RINGER_MODE_NORMAL"

    goto :goto_2

    :cond_6
    const v0, 0x7f020157

    goto :goto_5

    :pswitch_3
    if-nez v1, :cond_7

    const v0, 0x7f020159

    :goto_6
    const-string v2, "updateSoundProfile:AudioManager.RINGER_MODE_OUTDOOR"

    goto :goto_2

    :cond_7
    const v0, 0x7f02015a

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f070028

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->setContentView(Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->onLocaleChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v1, "QuickSettingSoundProfile"

    const-string v2, "!!!!!initialize set content fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->receiverRegister:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->receiverRegister:Z

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLocaleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->updateSoundContent()V

    return-void
.end method

.method public performNextProfileState()V
    .locals 8

    const/4 v7, 0x1

    iget v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->ringerMode:I

    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->MAX_MODE:I

    rem-int v1, v4, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->audioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_0
    if-ne v1, v7, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->vibrator:Landroid/os/Vibrator;

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->vibrator:Landroid/os/Vibrator;

    :cond_1
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "htc_dnd_feature_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->vibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_2

    if-eq v0, v7, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_2
    const-string v4, "QuickSettingSoundProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nextProfileState oldMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->ringerMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " elapse:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class public Lcom/android/systemui/statusbar/preference/Volume;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Volume.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field protected static final VOLUME_ICONS:[I

.field protected static VOLUME_SETTINGS:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaxProgress:I

.field private mProgress:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field private sStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x7

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/preference/Volume;->VOLUME_ICONS:[I

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Voice Volume"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "System Volume"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Ringer Volume"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Media Volume"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Alarm Volume"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Notification Volume"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Bluetooth Volume"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/preference/Volume;->VOLUME_SETTINGS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 0x4
        0x47t 0x5t 0x2t 0x7ft
        0x46t 0x5t 0x2t 0x7ft
        0x45t 0x5t 0x2t 0x7ft
        0x43t 0x5t 0x2t 0x7ft
        0x41t 0x5t 0x2t 0x7ft
        0x44t 0x5t 0x2t 0x7ft
        0x42t 0x5t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    iput v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mMaxProgress:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/preference/Volume$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Volume$1;-><init>(Lcom/android/systemui/statusbar/preference/Volume;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/android/systemui/statusbar/preference/Volume$2;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Volume;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/preference/Volume$2;-><init>(Lcom/android/systemui/statusbar/preference/Volume;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mVolumeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Volume;->init()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/preference/Volume;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    return v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/preference/Volume;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/preference/Volume;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    return v0
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/preference/Volume;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0a015c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f020546

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/Volume;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcSeekBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcSeekBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSummary:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Volume;->updateResources()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v4, 0x1

    packed-switch p2, :pswitch_data_0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    iget v5, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    iget v6, p0, Lcom/android/systemui/statusbar/preference/Volume;->mMaxProgress:I

    if-ge v5, v6, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    iget v5, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    add-int/lit8 v3, v5, 0x1

    iput v3, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    goto :goto_0

    :pswitch_1
    iget v5, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    if-lez v5, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    iget v5, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    add-int/lit8 v2, v5, -0x1

    iput v2, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iput p2, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mMaxProgress:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mMaxProgress:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Volume;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public updateResources()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/statusbar/preference/Volume;->VOLUME_SETTINGS:[Ljava/lang/String;

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mTitle:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    sget-object v2, Lcom/android/systemui/statusbar/preference/Volume;->VOLUME_SETTINGS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Volume;->mIcon:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/systemui/statusbar/preference/Volume;->VOLUME_ICONS:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/Volume;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

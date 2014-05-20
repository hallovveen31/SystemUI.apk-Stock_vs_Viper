.class public Lcom/android/systemui/statusbar/preference/SilentMode;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "SilentMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SilentModeStatusBarPreference"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/SilentMode$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/SilentMode$1;-><init>(Lcom/android/systemui/statusbar/preference/SilentMode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/preference/SilentMode$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/SilentMode$2;-><init>(Lcom/android/systemui/statusbar/preference/SilentMode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mClickListener:Landroid/view/View$OnClickListener;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/SilentMode;->init()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/preference/SilentMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/SilentMode;->handleSilentModeChanged()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/preference/SilentMode;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private handleSilentModeChanged()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020540

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/SilentMode;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02053f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/SilentMode;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0144

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02053f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/SilentMode;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/SilentMode;->handleSilentModeChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0144

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

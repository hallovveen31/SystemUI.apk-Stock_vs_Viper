.class public Lcom/android/systemui/statusbar/preference/PowerSaver;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "PowerSaver.java"


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private final KEY_USER_POWERSAVER_ENABLE:Ljava/lang/String;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mSystemSettings:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const-string v0, "user_powersaver_enable"

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->KEY_USER_POWERSAVER_ENABLE:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/PowerSaver$1;-><init>(Lcom/android/systemui/statusbar/preference/PowerSaver;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/PowerSaver$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/PowerSaver$2;-><init>(Lcom/android/systemui/statusbar/preference/PowerSaver;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/PowerSaver$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/preference/PowerSaver$3;-><init>(Lcom/android/systemui/statusbar/preference/PowerSaver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mSystemSettings:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->Cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/PowerSaver;->init()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/preference/PowerSaver;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/PowerSaver;->setToggles(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/preference/PowerSaver;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/PowerSaver;->isPowerSaverOn()Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0148

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020539

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/PowerSaver;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private isPowerSaverOn()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->Cr:Landroid/content/ContentResolver;

    const-string v3, "user_powersaver_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setToggles(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mSummary:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f0a0153

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    const v0, 0x7f0a0154

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/PowerSaver;->isPowerSaverOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preference/PowerSaver;->setToggles(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preference/PowerSaver;->setToggles(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/PowerSaver;->updateToggles()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->Cr:Landroid/content/ContentResolver;

    const-string v1, "user_powersaver_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mSystemSettings:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mSystemSettings:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->Cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mSystemSettings:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0148

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerSaver;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preference/PowerSaver;->setToggles(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preference/PowerSaver;->setToggles(Z)V

    goto :goto_0
.end method

.class public Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.super Ljava/lang/Object;
.source "StatusBarPreference.java"


# instance fields
.field protected mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

.field protected mContentView:Landroid/widget/LinearLayout;

.field protected mContext:Landroid/content/Context;

.field protected mDivider:Landroid/view/View;

.field private mEnable:Z

.field protected mIcon:Landroid/widget/ImageView;

.field protected mItemView:Landroid/widget/LinearLayout;

.field protected mSeekBar:Lcom/htc/widget/HtcSeekBar;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field protected mSummary:Landroid/widget/TextView;

.field protected mTitle:Landroid/widget/TextView;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mEnable:Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mVisible:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mItemView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mDivider:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->init()V

    return-void
.end method

.method private GetDrawableOverlay(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_use_veqs_overlay"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_veqs_oncolor"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0700b7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0700b9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0700bb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcToggleButtonLight;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0700ba

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcSeekBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_veqs_titlecolor"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_veqs_descriptioncolor"

    const v3, -0x9c9c9d

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mDivider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_veqs_dividercolor"

    const v3, -0xc2c2c3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public collapseStatusBar()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    :cond_0
    return-void
.end method

.method protected dismissKeyGuard()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getThemeResource(I)Landroid/graphics/drawable/Drawable;
    .locals 14

    iget-object v11, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v11, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "tweaks_systemui_theme_eqs"

    invoke-static {v0, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    :try_start_0
    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "venom.systemui.theme."

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->GetDrawableOverlay(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :goto_0
    return-object v11

    :catch_0
    move-exception v1

    const-string v11, "m0narX_tweaks"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error loading EQS from theme: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->GetDrawableOverlay(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mEnable:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mEnable:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_heqs_autoclose"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->collapseStatusBar()V

    :cond_2
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method public setVisibility(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mVisible:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->dismissKeyGuard()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->collapseStatusBar()V

    const/high16 v1, 0x1000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to start activity"

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Unable to start activity"

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public updateResources()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_heqs_autoclose"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->collapseStatusBar()V

    :cond_0
    return-void
.end method

.class public Lcom/android/systemui/statusbar/preference/User;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "User.java"


# instance fields
.field private mAvatar:Landroid/graphics/drawable/Drawable;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mUserInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/User$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/User$1;-><init>(Lcom/android/systemui/statusbar/preference/User;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/User;->mClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/User;->mAvatar:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/User;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/User;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/User;->mSeekBar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/User;->init()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/User;->updateResources()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/preference/User;Landroid/os/AsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/User;->mUserInfoTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private queryForUserInformation()V
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/User;->mContext:Landroid/content/Context;

    const-string v6, "android"

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object v0, v1

    new-instance v5, Lcom/android/systemui/statusbar/preference/User$2;

    invoke-direct {v5, p0, v4, v2, v0}, Lcom/android/systemui/statusbar/preference/User$2;-><init>(Lcom/android/systemui/statusbar/preference/User;Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/preference/User;->mUserInfoTask:Landroid/os/AsyncTask;

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/User;->mUserInfoTask:Landroid/os/AsyncTask;

    new-array v6, v10, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/User;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/User;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/User;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/User;->mAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/User;->mUserInfoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/User;->mUserInfoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/User;->mUserInfoTask:Landroid/os/AsyncTask;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/User;->queryForUserInformation()V

    :cond_1
    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/User;->mAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/User;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a00ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

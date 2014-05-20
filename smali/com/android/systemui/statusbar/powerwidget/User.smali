.class public Lcom/android/systemui/statusbar/powerwidget/User;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "User.java"


# instance fields
.field private mAvatar:Landroid/graphics/drawable/Drawable;

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
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/User;->mAvatar:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/User;->setTitle(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/User;->isIndicatorEnabled:Z

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/powerwidget/User;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/User;->mAvatar:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/powerwidget/User;Landroid/os/AsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/User;->mUserInfoTask:Landroid/os/AsyncTask;

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

    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/User;->mContext:Landroid/content/Context;

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

    new-instance v5, Lcom/android/systemui/statusbar/powerwidget/User$1;

    invoke-direct {v5, p0, v4, v2, v0}, Lcom/android/systemui/statusbar/powerwidget/User$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/User;Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/User;->mUserInfoTask:Landroid/os/AsyncTask;

    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/User;->mUserInfoTask:Landroid/os/AsyncTask;

    new-array v6, v10, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    return-object v0
.end method

.method protected getIconDrawableForState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/User;->mAvatar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getIconForState(Z)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/User;->mAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/User;->mUserInfoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/User;->mUserInfoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/User;->mUserInfoTask:Landroid/os/AsyncTask;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/User;->queryForUserInformation()V

    const v0, 0x7f0200bd

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected onToggleClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/User;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/User;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onToggleLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

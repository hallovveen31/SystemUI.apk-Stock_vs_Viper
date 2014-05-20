.class public Lcom/android/systemui/statusbar/phone/QuickLauncher;
.super Landroid/widget/FrameLayout;
.source "QuickLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private CurrentApps:Ljava/lang/String;

.field private final DEFAULTS:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mScroll:Landroid/widget/LinearLayout;

.field private mSettingsObserver:Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;

.field private venomIcons:Lcom/m0narx/framework/theme/AppIcons;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->CurrentApps:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickLauncher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickLauncher$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickLauncher;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mHandler:Landroid/os/Handler;

    const-string v0, "com.android.htccontacts,com.android.htccontacts.DialerTabActivity|com.android.mms,com.android.mms.ui.ConversationList|com.android.camera,com.android.camera.CameraEntry|com.m0narx.tweaks,com.m0narx.tweaks.main|com.m0narx.hub,com.m0narx.hub.main|com.m0narx.fileexplorer,com.m0narx.fileexplorer.main"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->DEFAULTS:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->CurrentApps:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickLauncher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickLauncher$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickLauncher;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mHandler:Landroid/os/Handler;

    const-string v0, "com.android.htccontacts,com.android.htccontacts.DialerTabActivity|com.android.mms,com.android.mms.ui.ConversationList|com.android.camera,com.android.camera.CameraEntry|com.m0narx.tweaks,com.m0narx.tweaks.main|com.m0narx.hub,com.m0narx.hub.main|com.m0narx.fileexplorer,com.m0narx.fileexplorer.main"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->DEFAULTS:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->CurrentApps:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickLauncher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickLauncher$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickLauncher;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mHandler:Landroid/os/Handler;

    const-string v0, "com.android.htccontacts,com.android.htccontacts.DialerTabActivity|com.android.mms,com.android.mms.ui.ConversationList|com.android.camera,com.android.camera.CameraEntry|com.m0narx.tweaks,com.m0narx.tweaks.main|com.m0narx.hub,com.m0narx.hub.main|com.m0narx.fileexplorer,com.m0narx.fileexplorer.main"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->DEFAULTS:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/phone/QuickLauncher;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/phone/QuickLauncher;)Lcom/m0narx/framework/theme/AppIcons;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->venomIcons:Lcom/m0narx/framework/theme/AppIcons;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/phone/QuickLauncher;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->CurrentApps:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/phone/QuickLauncher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->launchApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createView()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->removeAllViews()V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mScroll:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mScroll:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mScroll:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setScrollBarStyle(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mScroll:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/android/systemui/statusbar/phone/QuickLauncher;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickLauncher;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getAppButton(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040074

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0700a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcImageButton;

    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickLauncher$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickLauncher$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickLauncher;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p3}, Lcom/htc/widget/HtcImageButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/m0narx/framework/theme/AppIcons;->getInstance(Landroid/content/Context;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->venomIcons:Lcom/m0narx/framework/theme/AppIcons;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->createView()V

    return-void
.end method

.method private launchApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->collapseStatusBar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public checkEnabled()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_horizontal_qs"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->setupApps()V

    :cond_0
    return-void
.end method

.method public collapseStatusBar()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->checkEnabled()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickLauncher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;->observe()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setupApps()V
    .locals 11

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "tweaks_quicklauncher"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "com.android.htccontacts,com.android.htccontacts.DialerTabActivity|com.android.mms,com.android.mms.ui.ConversationList|com.android.camera,com.android.camera.CameraEntry|com.m0narx.tweaks,com.m0narx.tweaks.main|com.m0narx.hub,com.m0narx.hub.main|com.m0narx.fileexplorer,com.m0narx.fileexplorer.main"

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->CurrentApps:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    return-void

    :cond_2
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->CurrentApps:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mScroll:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->venomIcons:Lcom/m0narx/framework/theme/AppIcons;

    invoke-virtual {v8}, Lcom/m0narx/framework/theme/AppIcons;->refreshTheme()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "\\|"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    :goto_0
    array-length v8, v3

    if-ge v6, v8, :cond_1

    aget-object v8, v3, v6

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v8, v1

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    :try_start_0
    new-instance v4, Landroid/content/ComponentName;

    const/4 v8, 0x0

    aget-object v8, v1, v8

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-direct {v4, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->venomIcons:Lcom/m0narx/framework/theme/AppIcons;

    invoke-virtual {v8, v4}, Lcom/m0narx/framework/theme/AppIcons;->getIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher;->mScroll:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    aget-object v9, v1, v9

    const/4 v10, 0x1

    aget-object v10, v1, v10

    invoke-direct {p0, v9, v10, v0}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->getAppButton(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/statusbar/phone/QuickLauncher;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_1
.end method

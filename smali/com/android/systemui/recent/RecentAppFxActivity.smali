.class public Lcom/android/systemui/recent/RecentAppFxActivity;
.super Landroid/app/Activity;
.source "RecentAppFxActivity.java"

# interfaces
.implements Lcom/android/systemui/recent/FxRecentTasksLoader$RecentTaskListener;
.implements Lcom/android/systemui/recent/RecentsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;,
        Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field final NUM_PANEL:I

.field private final WAS_SHOWING:Ljava/lang/String;

.field private actionClearAll:Lcom/htc/widget/ActionBarItemView;

.field private actionContainer:Lcom/htc/widget/ActionBarContainer;

.field private actionRunningMem:Lcom/htc/widget/ActionBarItemView;

.field private actionText:Lcom/htc/widget/ActionBarText;

.field private am:Landroid/app/ActivityManager;

.field private clearWindowFlag:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private isAdapterBound:Z

.field private isAppTransitionEnd:Z

.field private isStartActivityExit:Z

.field private mActionBarHeight:I

.field mContext:Landroid/content/Context;

.field private mGridViewPaddingBottom:I

.field private mGridViewPaddingLeft:I

.field private mGridViewPaddingRight:I

.field private mGridViewPaddingTop:I

.field private mIsCurrentOnRecent:Z

.field private mIsTextAnimNeeded:Z

.field private mNoRecentView:Landroid/view/View;

.field private mOrientation:I

.field private mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

.field private mRecentGridViewAdapter:Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;

.field private mRecentTaskDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasksLoader:Lcom/android/systemui/recent/FxRecentTasksLoader;

.field private mResources:Landroid/content/res/Resources;

.field private mWasShowing:Z

.field private phoneWindow:Landroid/view/Window;

.field private textAnimation:Ljava/lang/Runnable;

.field private thumbnailHeight:I

.field private thumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "was_showing"

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->WAS_SHOWING:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->NUM_PANEL:I

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->isAppTransitionEnd:Z

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->isAdapterBound:Z

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mActionBarHeight:I

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingTop:I

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingBottom:I

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingLeft:I

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingRight:I

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->phoneWindow:Landroid/view/Window;

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailWidth:I

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailHeight:I

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mOrientation:I

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsCurrentOnRecent:Z

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mWasShowing:Z

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsTextAnimNeeded:Z

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionText:Lcom/htc/widget/ActionBarText;

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionRunningMem:Lcom/htc/widget/ActionBarItemView;

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/recent/RecentAppFxActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentAppFxActivity$1;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->textAnimation:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/recent/RecentAppFxActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentAppFxActivity$2;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->clearWindowFlag:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->isStartActivityExit:Z

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/recent/RecentAppFxActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/recent/RecentAppFxActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsTextAnimNeeded:Z

    return v0
.end method

.method static synthetic access$10(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/htc/widget/ActionBarItemView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionRunningMem:Lcom/htc/widget/ActionBarItemView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$12(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$13(Lcom/android/systemui/recent/RecentAppFxActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->textAnimation:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$14(Lcom/android/systemui/recent/RecentAppFxActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->clearWindowFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/recent/RecentAppFxActivity;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recent/RecentAppFxActivity;->updateThumbnail(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$3(Lcom/android/systemui/recent/RecentAppFxActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsCurrentOnRecent:Z

    return v0
.end method

.method static synthetic access$4(Lcom/android/systemui/recent/RecentAppFxActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsTextAnimNeeded:Z

    return-void
.end method

.method static synthetic access$5(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/android/systemui/recent/RecentsGridView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->phoneWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridViewAdapter:Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/htc/widget/ActionBarItemView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/android/systemui/recent/RecentAppFxActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->clearAllItems()V

    return-void
.end method

.method private clearAllItems()V
    .locals 12

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x2

    iget-object v8, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const-string v8, "RecentApps"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "clearAllItems childCount = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    add-int/lit8 v8, v2, -0x1

    if-ne v3, v8, :cond_2

    move v0, v6

    :goto_1
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const-string v9, "scaleX"

    new-array v10, v11, [F

    fill-array-data v10, :array_0

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v8, v7

    const-string v9, "scaleY"

    new-array v10, v11, [F

    fill-array-data v10, :array_1

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v9, "alpha"

    new-array v10, v11, [F

    fill-array-data v10, :array_2

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v8, 0xdc

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v8, Lcom/android/systemui/recent/RecentAppFxActivity$3;

    invoke-direct {v8, p0, v1, v0, v2}, Lcom/android/systemui/recent/RecentAppFxActivity$3;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;Landroid/view/View;ZI)V

    invoke-virtual {v5, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    mul-int/lit8 v8, v3, 0x5

    rsub-int/lit8 v8, v8, 0x32

    add-int/2addr v4, v8

    int-to-long v8, v4

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    const/high16 v8, 0x3f80

    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private dismissAndGoBack()V
    .locals 6

    const/4 v5, 0x1

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    const-string v3, "RecentApps"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Back Pressed - id = "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->findViewForTask(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentAppFxActivity;->handleOnClick(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->finish()V

    goto :goto_0
.end method

.method private findViewForTask(I)Landroid/view/View;
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v3, v3, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    iget v3, v3, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    if-eq v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initClearRecentApps()V
    .locals 4

    const v1, 0x7f07007c

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentAppFxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RAMMeter;

    const-string v1, "Venom - Recent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clear_all_button: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/recent/RecentAppFxActivity$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentAppFxActivity$4;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RAMMeter;->setOnTasksClearedListener(Lcom/android/systemui/recent/RAMMeter$onTasksCleared;)V

    :cond_0
    return-void
.end method

.method private refreshRecentTasksList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTasksLoader:Lcom/android/systemui/recent/FxRecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/FxRecentTasksLoader;->getRecentTasks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private releaseHWTextureCache()V
    .locals 7

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    sget-boolean v3, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "RecentApps.Perf"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "releaseHWTextureCache:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "RecentApps"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "!!!!!releaseHWTextureCache:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 6

    const/4 v5, 0x0

    sget-object v2, Lcom/android/systemui/R2$styleable;->RecentStylable:[I

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->setSupportMode(I)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const v2, 0x7f070043

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    new-instance v2, Lcom/htc/widget/ActionBarText;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionText:Lcom/htc/widget/ActionBarText;

    const v3, 0x7f0a00f5

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;

    const v3, 0x7f020121

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;

    new-instance v3, Lcom/android/systemui/recent/RecentAppFxActivity$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/recent/RecentAppFxActivity$5;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionRunningMem:Lcom/htc/widget/ActionBarItemView;

    const v3, 0x7f02013d

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionRunningMem:Lcom/htc/widget/ActionBarItemView;

    new-instance v3, Lcom/android/systemui/recent/RecentAppFxActivity$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/recent/RecentAppFxActivity$6;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionRunningMem:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionRunningMem:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/htc/util/ActionBarUtil;->getActionBarHeight(Landroid/content/Context;Z)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mActionBarHeight:I

    return-void
.end method

.method private setupMeasurement()V
    .locals 11

    const/4 v10, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mActionBarHeight:I

    sub-int v1, v5, v6

    iget v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0067

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailWidth:I

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0068

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailHeight:I

    iput v10, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingRight:I

    iput v10, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingLeft:I

    iget v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailHeight:I

    mul-int/lit8 v5, v5, 0x3

    sub-int v5, v1, v5

    div-int/lit8 v3, v5, 0x4

    iput v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingBottom:I

    iput v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingTop:I

    :goto_0
    const v5, 0x7f070044

    invoke-virtual {p0, v5}, Lcom/android/systemui/recent/RecentAppFxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recent/RecentsGridView;

    iput-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    iget v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingLeft:I

    iget v7, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingTop:I

    iget v8, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingRight:I

    iget v9, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingBottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    iget v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailWidth:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsGridView;->setColumnWidth(I)V

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/recent/RecentsGridView;->setVerticalSpacing(I)V

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v5, p0}, Lcom/android/systemui/recent/RecentsGridView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0063

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailWidth:I

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0064

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailHeight:I

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x2050001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingBottom:I

    iput v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingTop:I

    iput v10, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingRight:I

    iput v10, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingLeft:I

    iget v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailHeight:I

    mul-int/lit8 v5, v5, 0x3

    sub-int v5, v1, v5

    iget v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingBottom:I

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    goto :goto_0
.end method

.method private showHideClearRecent()V
    .locals 2

    const v1, 0x7f07007c

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentAppFxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RAMMeter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mNoRecentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RAMMeter;->setRecentsState(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private updateThumbnail(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 13

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    move-object v11, p2

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v11, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v0, 0x0

    if-le v4, v2, :cond_0

    const/high16 v11, 0x42b4

    invoke-virtual {v1, v11}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget v11, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailWidth:I

    int-to-float v6, v11

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v7, v11

    :goto_1
    div-float v8, v6, v7

    iget v11, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailHeight:I

    int-to-float v9, v11

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v10, v11

    :goto_2
    div-float v11, v9, v10

    invoke-virtual {v1, v8, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    sget-object v11, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v0, 0x0

    if-ge v5, v3, :cond_0

    const/high16 v11, -0x3d4c

    invoke-virtual {v1, v11}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v7, v11

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v10, v11

    goto :goto_2
.end method


# virtual methods
.method public clearRecentTasksList()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recent/RecentsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTasksLoader:Lcom/android/systemui/recent/FxRecentTasksLoader;

    invoke-virtual {v1}, Lcom/android/systemui/recent/FxRecentTasksLoader;->cancelLoadingThumbnails()V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    :cond_2
    return-void

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    invoke-virtual {v0, v3}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 0

    return-void
.end method

.method public handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public handleOnClick(Landroid/view/View;)V
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v10, 0x7f070046

    invoke-virtual {p0, v10}, Lcom/android/systemui/recent/RecentAppFxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recent/ScaleLaunchView;

    if-eqz p1, :cond_2

    if-eqz v8, :cond_2

    const/4 v10, 0x2

    new-array v0, v10, [I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    if-eqz v9, :cond_2

    iget-object v10, v9, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->img:Landroid/widget/ImageView;

    if-eqz v10, :cond_2

    iget-object v10, v9, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->isStartActivityExit:Z

    sget-boolean v10, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "RecentApps"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "click task : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v9, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {v12}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v10, v9, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v10, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v10, 0x0

    aget v10, v0, v10

    iput v10, v6, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->left:I

    iget v11, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailWidth:I

    add-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->right:I

    const/4 v10, 0x1

    aget v10, v0, v10

    iput v10, v6, Landroid/graphics/Rect;->top:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    iget v11, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailHeight:I

    add-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v10, v4, Landroid/graphics/Point;->x:I

    iget v11, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/graphics/Point;->y:I

    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    const-string v10, "activity"

    invoke-virtual {p0, v10}, Lcom/android/systemui/recent/RecentAppFxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    iput-object v10, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    new-instance v5, Lcom/android/systemui/recent/RecentAppFxActivity$7;

    invoke-direct {v5, p0, v9}, Lcom/android/systemui/recent/RecentAppFxActivity$7;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;)V

    iget-object v10, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v10, v9, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    iget-object v10, v10, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-object v10, v9, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    iget-object v10, v10, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    const-string v11, "com.htc."

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/high16 v11, 0x400

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/android/systemui/recent/ScaleLaunchView;->setVisibility(I)V

    iget-object v10, v9, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {v10}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10, v6, v7, v5}, Lcom/android/systemui/recent/ScaleLaunchView;->startLaunchAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/Animator$AnimatorListener;)V

    sget-boolean v10, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-eqz v10, :cond_2

    const-string v10, "RecentApps.Perf"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "clickTime:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v1

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    iget-object v12, v12, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public handleSwipe(Landroid/view/View;)V
    .locals 8

    const/4 v5, 0x1

    sget-boolean v2, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RecentApps"

    const-string v3, "handleSwipe"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v1, v2, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    if-nez v1, :cond_2

    const-string v2, "RecentApps"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not able to find activity description for swiped task; view="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    sget-boolean v2, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "RecentApps"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleSwipe delete item index = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " task : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recent/RecentsGridView;->setDelPositionsList(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridViewAdapter:Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;->notifyDataSetInvalidated()V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    iget v3, v1, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v2, v3, v5}, Landroid/app/ActivityManager;->removeTask(II)Z

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0a007c

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v2}, Landroid/view/View;->requestAccessibilityFocus()Z

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->sendAccessibilityEvent(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->dismissAndGoBack()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[SystemUI][RecentApp_Launch_Start]["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][ms][START]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RecentApps"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mOrientation:I

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    new-instance v0, Lcom/android/systemui/recent/FxRecentTasksLoader;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/FxRecentTasksLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTasksLoader:Lcom/android/systemui/recent/FxRecentTasksLoader;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recent/FxRecentTasksLoader;->setRecentTaskListener(Lcom/android/systemui/recent/FxRecentTasksLoader$RecentTaskListener;)V

    new-instance v0, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridViewAdapter:Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;

    const v0, 0x7f040062

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->setupActionBar()V

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->setupMeasurement()V

    if-eqz p1, :cond_1

    const-string v0, "was_showing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mWasShowing:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->phoneWindow:Landroid/view/Window;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mWasShowing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->phoneWindow:Landroid/view/Window;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->initClearRecentApps()V

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->showHideClearRecent()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsGridView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->clearRecentTasksList()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->dismissAndGoBack()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->isStartActivityExit:Z

    if-eqz v0, :cond_0

    const v0, 0x7f05000b

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->overridePendingTransition(II)V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->releaseHWTextureCache()V

    return-void

    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/recent/RecentAppFxActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    const-wide/16 v9, 0x2

    invoke-virtual {v4, v9, v10}, Ldalvik/system/VMRuntime;->disableGcInRange(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/systemui/recent/RecentAppFxActivity;->refreshRecentTasksList(Ljava/util/ArrayList;)V

    const-string v6, "RecentApps.Perf"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "refreshRecentTasksList:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTasksLoader:Lcom/android/systemui/recent/FxRecentTasksLoader;

    invoke-virtual {v6}, Lcom/android/systemui/recent/FxRecentTasksLoader;->isCurrenOnRecents()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsCurrentOnRecent:Z

    iget-boolean v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsCurrentOnRecent:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mWasShowing:Z

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsTextAnimNeeded:Z

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    const-string v6, "RecentApps"

    const-string v7, "!!!!!recent task null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v8}, Ldalvik/system/VMRuntime;->restoreGc(Z)Z

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->finish()V

    :goto_1
    return-void

    :cond_0
    move v6, v8

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v6, v7}, Lcom/android/systemui/recent/RecentsGridView;->setNoRecentTask(Z)V

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    iget v9, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mActionBarHeight:I

    invoke-virtual {v6, v8, v9, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    const v6, 0x7f070045

    invoke-virtual {p0, v6}, Lcom/android/systemui/recent/RecentAppFxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mNoRecentView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mNoRecentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    invoke-static {p0}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v3

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mNoRecentView:Landroid/view/View;

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    sget-boolean v6, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "RecentApps"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isInAllCapsLocale:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mNoRecentView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    if-nez v5, :cond_7

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a0007

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v6, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-gt v5, v7, :cond_4

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v6}, Lcom/android/systemui/recent/RecentsGridView;->setAllThumbnailShowed()V

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->clearWindowFlag:Ljava/lang/Runnable;

    const-wide/16 v10, 0xc8

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-boolean v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsTextAnimNeeded:Z

    if-eqz v6, :cond_5

    if-ne v5, v7, :cond_5

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->textAnimation:Ljava/lang/Runnable;

    const-wide/16 v9, 0xfa

    invoke-virtual {v6, v7, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    invoke-virtual {v4, v8}, Ldalvik/system/VMRuntime;->restoreGc(Z)Z

    const-string v6, "AutoTest"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[SystemUI][RecentApp_Launch_Finish]["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "][ms][FINISH]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    iget-boolean v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->isAdapterBound:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    iget-object v9, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridViewAdapter:Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;

    invoke-virtual {v6, v9}, Lcom/android/systemui/recent/RecentsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-boolean v7, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->isAdapterBound:Z

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v9, 0x7f0e

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {v6, v9, v5, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "was_showing"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 8

    monitor-enter p1

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    monitor-exit p1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v2, 0x1

    const/4 v0, 0x0

    if-ne v4, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    iget-object v7, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v6, v5, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v5, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/recent/RecentAppFxActivity;->updateThumbnail(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-boolean v6, v5, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->isAnimNeeded:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->playAlphaAnimate(Landroid/view/View;Z)V

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->isAnimNeeded:Z

    goto :goto_0
.end method

.method public playAlphaAnimate(Landroid/view/View;Z)V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "RecentApps"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "playAlphaAnimate() view = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isLastTask = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/recent/RecentAppFxActivity$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/recent/RecentAppFxActivity$8;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

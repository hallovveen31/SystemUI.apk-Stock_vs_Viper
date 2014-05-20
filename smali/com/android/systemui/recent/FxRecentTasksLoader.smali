.class public Lcom/android/systemui/recent/FxRecentTasksLoader;
.super Ljava/lang/Object;
.source "FxRecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/FxRecentTasksLoader$RecentTaskListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private isCurrenOnRecents:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;

.field private mDefaultThumbnailBackground:Landroid/graphics/drawable/BitmapDrawable;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/systemui/recent/FxRecentTasksLoader$RecentTaskListener;

.field private mOrientation:I

.field private mThumbnailLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/recent/FxRecentTasksLoader;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->isCurrenOnRecents:Ljava/lang/Boolean;

    iput-object v7, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->am:Landroid/app/ActivityManager;

    iput-object v7, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->pm:Landroid/content/pm/PackageManager;

    iput v6, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mOrientation:I

    iput-object p1, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mOrientation:I

    const v5, 0x7f0c006e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0c006f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v5, -0x100

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/drawable/BitmapDrawable;

    sget-boolean v5, Lcom/android/systemui/recent/FxRecentTasksLoader;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "RecentTasksLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thumbnail width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    iput-object v5, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->am:Landroid/app/ActivityManager;

    iget-object v5, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->pm:Landroid/content/pm/PackageManager;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/FxRecentTasksLoader;)Lcom/android/systemui/recent/FxRecentTasksLoader$RecentTaskListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mListener:Lcom/android/systemui/recent/FxRecentTasksLoader$RecentTaskListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/FxRecentTasksLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private loadThumbnailsInBackground(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/FxRecentTasksLoader;->loadThumbnail(Lcom/android/systemui/recent/TaskDescription;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    new-instance v1, Lcom/android/systemui/recent/FxRecentTasksLoader$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recent/FxRecentTasksLoader$1;-><init>(Lcom/android/systemui/recent/FxRecentTasksLoader;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, v3}, Ldalvik/system/VMRuntime;->restoreGc(Z)Z

    sget-boolean v1, Lcom/android/systemui/recent/FxRecentTasksLoader;->DEBUG:Z

    if-ne v1, v2, :cond_0

    const-string v1, "RecentApps.Perf"

    const-string v2, "restoreGc:one item case"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, v3}, Ldalvik/system/VMRuntime;->restoreGc(Z)Z

    sget-boolean v1, Lcom/android/systemui/recent/FxRecentTasksLoader;->DEBUG:Z

    if-ne v1, v2, :cond_0

    const-string v1, "RecentApps.Perf"

    const-string v2, "restoreGc:no item case"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelLoadingThumbnails()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/recent/TaskDescription;
    .locals 10

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p4, :cond_0

    invoke-virtual {v8, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x200001

    and-int/2addr v1, v2

    const/high16 v2, 0x1000

    or-int/2addr v1, v2

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/recent/FxRecentTasksLoader;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "RecentTasksLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "creating activity desc for id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", label="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/android/systemui/recent/TaskDescription;

    iget-object v5, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recent/TaskDescription;-><init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v9}, Lcom/android/systemui/recent/TaskDescription;->setLabel(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getRecentTasks()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/FxRecentTasksLoader;->cancelLoadingThumbnails()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FxRecentTasksLoader;->am:Landroid/app/ActivityManager;

    const/16 v2, 0x12

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v16

    if-nez v16, :cond_1

    sget-boolean v1, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "RecentApps"

    const-string v2, "recentTasks is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v20, 0x0

    :goto_0
    return-object v20

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    const/high16 v2, 0x4480

    div-float/2addr v1, v2

    const/high16 v2, 0x4480

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int v13, v1, v19

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v8

    int-to-long v1, v13

    invoke-virtual {v8, v1, v2}, Ldalvik/system/VMRuntime;->disableGcInRange(J)V

    sget-boolean v1, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "RecentApps.Perf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "am.getRecentTasks:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v17

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " taskSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " disableGcInRange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FxRecentTasksLoader;->pm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v14

    const/4 v9, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/FxRecentTasksLoader;->isCurrenOnRecents:Ljava/lang/Boolean;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v14, :cond_5

    const/16 v1, 0x9

    if-ge v11, v1, :cond_5

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v15, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v3, v15, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v4, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v5, v15, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    iget-object v6, v15, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recent/FxRecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/recent/TaskDescription;

    move-result-object v12

    if-eqz v12, :cond_4

    if-nez v10, :cond_3

    iget-boolean v1, v15, Landroid/app/ActivityManager$RecentTaskInfo;->isCurrent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/FxRecentTasksLoader;->isCurrenOnRecents:Ljava/lang/Boolean;

    :cond_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/FxRecentTasksLoader;->loadThumbnailsInBackground(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public isCurrenOnRecents()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->isCurrenOnRecents:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method loadThumbnail(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->am:Landroid/app/ActivityManager;

    iget v6, p1, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getTaskTopThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    monitor-enter p1

    if-eqz v4, :cond_3

    :try_start_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v5}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v5, Lcom/android/systemui/recent/FxRecentTasksLoader;->DEBUG:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const-string v5, "RecentApps.Perf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadThumbnail am.getThumbnail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v2, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " refineThumbnail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " label:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v5}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v5}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v5, Lcom/android/systemui/recent/FxRecentTasksLoader;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "RecentTasksLoader"

    const-string v6, "loadThumbnail : thumb is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setRecentTaskListener(Lcom/android/systemui/recent/FxRecentTasksLoader$RecentTaskListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/FxRecentTasksLoader;->mListener:Lcom/android/systemui/recent/FxRecentTasksLoader$RecentTaskListener;

    return-void
.end method

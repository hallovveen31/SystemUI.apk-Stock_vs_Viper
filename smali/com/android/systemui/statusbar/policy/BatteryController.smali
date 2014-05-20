.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private batteryObserver:Landroid/database/ContentObserver;

.field private batteryTextVisible:Z

.field private handler:Landroid/os/Handler;

.field private icon:I

.field private level:I

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mTheme:Lcom/android/systemui/statusbar/theming/VenomBatteryTheming;

.field private plugged:Z

.field private queryMode:Z

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->queryMode:Z

    iput v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->plugged:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->handler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryObserver:Landroid/database/ContentObserver;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryTextVisible:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.systemui.UI_QUERY_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.systemui.UI_QUERY_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/android/systemui/statusbar/theming/VenomBatteryTheming;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/theming/VenomBatteryTheming;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mTheme:Lcom/android/systemui/statusbar/theming/VenomBatteryTheming;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->startBatteryObserve()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/policy/BatteryController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateBatteryTextVisible(Z)V

    return-void
.end method

.method private broadcastBatteryIntent()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.systemui.UI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "battery"

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "level"

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "StatusBar.BatteryController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendIconResource:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private startBatteryObserve()V
    .locals 4

    const-string v1, "StatusBar.BatteryController"

    const-string v2, "batteryObserver.startObserve"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string v1, "show_status_bar_battery_percentage"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private updateBatteryTextVisible(Z)V
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryTextVisible:Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    goto :goto_2
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryTextVisible:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "level"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    const-string v10, "status"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    const-string v10, "plugged"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->plugged:Z

    const v10, 0x7f0202c8

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    const v10, 0x7f0202da

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    :cond_0
    :goto_1
    const-string v10, "support_extension"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v10, "unsupport_charger"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const v10, 0x7f0202ee

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    :cond_1
    sget-boolean v10, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    if-eqz v10, :cond_2

    const-string v10, "StatusBar.BatteryController"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "status:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " level:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " unsupport:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " support_extension:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " plugged:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->plugged:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v3, 0x0

    :goto_2
    if-lt v3, v8, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v7, 0x0

    :goto_3
    if-lt v7, v9, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_9

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->queryMode:Z

    if-eqz v10, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->broadcastBatteryIntent()V

    :cond_3
    :goto_5
    return-void

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    const v10, 0x7f020306

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    goto/16 :goto_1

    :cond_6
    const v10, 0x7f0202c8

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mTheme:Lcom/android/systemui/statusbar/theming/VenomBatteryTheming;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    invoke-virtual {v10, v4, v11}, Lcom/android/systemui/statusbar/theming/VenomBatteryTheming;->setIcon(Landroid/widget/ImageView;I)V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0018

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->plugged:Z

    invoke-interface {v10, v11, v12}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZ)V

    goto/16 :goto_4

    :cond_a
    const-string v10, "com.htc.systemui.UI_QUERY_START"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->queryMode:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->broadcastBatteryIntent()V

    sget-boolean v10, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string v10, "StatusBar.BatteryController"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "receiveStartTime:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_b
    const-string v10, "com.htc.systemui.UI_QUERY_END"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->queryMode:Z

    sget-boolean v10, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string v10, "StatusBar.BatteryController"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "receiveFinishTime:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

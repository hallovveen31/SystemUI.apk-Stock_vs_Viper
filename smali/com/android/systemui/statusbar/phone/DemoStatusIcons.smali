.class public Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
.super Landroid/widget/LinearLayout;
.source "DemoStatusIcons.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# instance fields
.field private mDemoMode:Z

.field private mIconSize:I

.field private final mStatusIcons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setStatusBarIconSize()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setGravity(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private setStatusBarIconSize()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_status_bar_size"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f0c009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    goto :goto_0
.end method

.method private updateSlot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v8, -0x1

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v7, v1, :cond_1

    :goto_2
    if-nez p3, :cond_4

    const/4 v1, -0x1

    if-eq v8, v1, :cond_4

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p3, :cond_2

    move v8, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v9

    iput-object p2, v9, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    iput p3, v9, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-virtual {v10, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v6, "Demo"

    move-object v1, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    new-instance v11, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v11, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v11, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v11, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    const-string v21, "enter"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    const-string v21, "exit"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    const-string v21, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    const-string v21, "volume"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    const-string v21, "silent"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const v3, 0x7f020488

    :goto_1
    const-string v21, "volume"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    const-string v21, "bluetooth"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v21, "disconnected"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    const v4, 0x7f02032d

    :goto_2
    const-string v21, "bluetooth"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    const-string v21, "location"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    const-string v21, "show"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    const v5, 0x7f020410

    :goto_3
    const-string v21, "location"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v5}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    const-string v21, "alarm"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    const-string v21, "show"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    const v6, 0x7f0202c7

    :goto_4
    const-string v21, "alarm_clock"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_6
    const-string v21, "sync"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_7

    const-string v21, "show"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    const v7, 0x7f0204bc

    :goto_5
    const-string v21, "sync_active"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v7}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    const-string v21, "tty"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_8

    const-string v21, "show"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    const v8, 0x7f0204c0

    :goto_6
    const-string v21, "tty"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v8}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_8
    const-string v21, "eri"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_9

    const-string v21, "show"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    const v9, 0x7f02048a

    :goto_7
    const-string v21, "cdma_eri"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_9
    const-string v21, "mute"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_a

    const-string v21, "show"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    const v10, 0x1080076

    :goto_8
    const-string v21, "mute"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v10}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_a
    const-string v21, "speakerphone"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_0

    const-string v21, "show"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    const v11, 0x1080087

    :goto_9
    const-string v21, "speakerphone"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v11}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    const-string v21, "vibrate"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    const v3, 0x7f020489

    goto/16 :goto_1

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_d
    const-string v21, "connected"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    const v4, 0x7f02032e

    goto/16 :goto_2

    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_7

    :cond_14
    const/4 v10, 0x0

    goto :goto_8

    :cond_15
    const/4 v11, 0x0

    goto :goto_9
.end method

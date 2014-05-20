.class public Lcom/android/systemui/statusbar/theming/NotificationTheme;
.super Ljava/lang/Object;
.source "NotificationTheme.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTheme(Landroid/content/Context;Landroid/view/View;)J
    .locals 18

    if-nez p1, :cond_0

    const-wide/16 v15, 0x0

    :goto_0
    return-wide v15

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "tweaks_actiondivider_color"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const v15, 0x10202dc

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v15, v2, Landroid/widget/ImageView;

    if-eqz v15, :cond_2

    const v15, 0x2080041

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v15, 0x9a

    invoke-virtual {v6, v15}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    if-eqz v7, :cond_1

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const v15, 0x10202de

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_4

    instance-of v15, v9, Landroid/widget/ImageView;

    if-eqz v15, :cond_4

    const v15, 0x2080041

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v7, :cond_3

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    const/16 v15, 0x9a

    invoke-virtual {v6, v15}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v9, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v15, 0x10202d3

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    instance-of v15, v3, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_5

    const v15, 0x2080036

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v15, 0x9a

    invoke-virtual {v6, v15}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object v15, v3

    check-cast v15, Landroid/widget/LinearLayout;

    invoke-virtual {v15, v6}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast v3, Landroid/widget/LinearLayout;

    const v15, 0x2050001

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "tweaks_notification_bgcolor"

    const v17, -0xe9e9ea

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setBackgroundColor(I)V

    const v15, 0x1020006

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_6

    instance-of v15, v8, Landroid/widget/ImageView;

    if-eqz v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "tweaks_notification_icon_bgcolor"

    const v17, -0xd3d1d1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v8, v15}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1, v15}, Lcom/android/systemui/statusbar/theming/NotificationTheme;->processChildren(Landroid/view/View;Landroid/content/Context;I)V

    const v15, 0x1020064

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_7

    instance-of v15, v11, Landroid/widget/OnDemandDateTimeView;

    if-eqz v15, :cond_7

    move-object v15, v11

    check-cast v15, Landroid/widget/OnDemandDateTimeView;

    const v16, 0x7f0d002d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/OnDemandDateTimeView;->setTextAppearance(Landroid/content/Context;I)V

    move-object v15, v11

    check-cast v15, Landroid/widget/OnDemandDateTimeView;

    invoke-virtual {v15}, Landroid/widget/OnDemandDateTimeView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v15

    if-eqz v15, :cond_7

    move-object v15, v11

    check-cast v15, Landroid/widget/OnDemandDateTimeView;

    invoke-virtual {v15}, Landroid/widget/OnDemandDateTimeView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    check-cast v11, Landroid/widget/OnDemandDateTimeView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "tweaks_notif_timecolor"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v11, v15}, Landroid/widget/OnDemandDateTimeView;->setTextColor(I)V

    :cond_7
    const v15, 0x1020016

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_8

    instance-of v15, v14, Landroid/widget/TextView;

    if-eqz v15, :cond_8

    move-object v15, v14

    check-cast v15, Landroid/widget/TextView;

    const v16, 0x7f0d002b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object v15, v14

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v15

    if-eqz v15, :cond_8

    move-object v15, v14

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "tweaks_notif_titlecolor"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    const v15, 0x10202d8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    instance-of v15, v4, Landroid/widget/Chronometer;

    if-eqz v15, :cond_a

    move-object v15, v4

    check-cast v15, Landroid/widget/Chronometer;

    const v16, 0x7f0d002d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/Chronometer;->setTextAppearance(Landroid/content/Context;I)V

    move-object v15, v4

    check-cast v15, Landroid/widget/Chronometer;

    invoke-virtual {v15}, Landroid/widget/Chronometer;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v15

    if-eqz v15, :cond_9

    move-object v15, v4

    check-cast v15, Landroid/widget/Chronometer;

    move-object/from16 v16, v4

    check-cast v16, Landroid/widget/Chronometer;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Chronometer;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Chronometer;->setTextColor(I)V

    :cond_9
    move-object v15, v4

    check-cast v15, Landroid/widget/Chronometer;

    invoke-virtual {v15}, Landroid/widget/Chronometer;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    check-cast v4, Landroid/widget/Chronometer;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "tweaks_notif_chronocolor"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v4, v15}, Landroid/widget/Chronometer;->setTextColor(I)V

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v12

    goto/16 :goto_0
.end method

.method private static getAllChildrenBFS(Landroid/view/View;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :cond_1
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eq v0, p0, :cond_2

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    instance-of v6, v0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static processChildren(Landroid/view/View;Landroid/content/Context;I)V
    .locals 26

    const/16 v22, 0x20

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/theming/NotificationTheme;->repeat(CI)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "tweaks_smallicon_color"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "tweaks_controlicon_color"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v13, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/theming/NotificationTheme;->getAllChildrenBFS(Landroid/view/View;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_0

    return-void

    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    instance-of v0, v8, Landroid/widget/TextView;

    move/from16 v23, v0

    if-nez v23, :cond_1

    instance-of v0, v8, Landroid/widget/OnDemandButton;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    :cond_1
    move-object v10, v8

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "tweaks_notif_textcolor"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_2

    :try_start_0
    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    :goto_2
    instance-of v0, v8, Landroid/widget/OnDemandButton;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v18, v8

    check-cast v18, Landroid/widget/OnDemandButton;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "tweaks_actionbutton_color"

    const/16 v25, -0x1

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/widget/OnDemandButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_3

    array-length v0, v7

    move/from16 v23, v0

    if-lez v23, :cond_3

    const/16 v23, 0x0

    aget-object v6, v7, v23

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v23

    invoke-virtual {v6, v4, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/widget/OnDemandButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "tweaks_actiontext_color"

    const/16 v25, -0x1

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    const v23, 0x203005b

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/OnDemandButton;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/OnDemandButton;->setTextColor(I)V

    :cond_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-class v24, Landroid/widget/ImageButton;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_5

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-class v24, Lcom/htc/widget/HtcImageButton;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_6

    :cond_5
    move-object/from16 v18, v8

    check-cast v18, Landroid/widget/ImageButton;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "tweaks_actionbutton_color"

    const/16 v25, -0x1

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    if-eqz v23, :cond_6

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v23

    invoke-virtual {v6, v4, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    :goto_4
    add-int/lit8 v12, p2, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v8, v0, v1}, Lcom/android/systemui/statusbar/theming/NotificationTheme;->processChildren(Landroid/view/View;Landroid/content/Context;I)V

    add-int/lit8 v13, v13, 0x1

    move/from16 p2, v12

    goto/16 :goto_0

    :cond_7
    instance-of v0, v8, Landroid/widget/ImageView;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-class v24, Lcom/htc/widget/HtcImageButton;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_2

    move-object v9, v8

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v23

    const v24, 0x10202dd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_4
    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v16

    :goto_5
    if-lez v15, :cond_8

    const/16 v23, 0x60

    move/from16 v0, v23

    if-le v15, v0, :cond_9

    :cond_8
    if-lez v16, :cond_a

    const/16 v23, 0x60

    move/from16 v0, v16

    move/from16 v1, v23

    if-gt v0, v1, :cond_a

    :cond_9
    if-eqz v20, :cond_2

    invoke-virtual {v9}, Landroid/widget/ImageView;->clearColorFilter()V

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v9}, Landroid/widget/ImageView;->clearColorFilter()V

    goto/16 :goto_2

    :catch_0
    move-exception v23

    goto :goto_4

    :catch_1
    move-exception v23

    goto/16 :goto_3

    :catch_2
    move-exception v23

    goto :goto_5

    :catch_3
    move-exception v23

    goto/16 :goto_2

    :catch_4
    move-exception v23

    goto/16 :goto_1
.end method

.method private static repeat(CI)Ljava/lang/String;
    .locals 4

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

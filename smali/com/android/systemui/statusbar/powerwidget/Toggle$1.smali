.class Lcom/android/systemui/statusbar/powerwidget/Toggle$1;
.super Landroid/os/Handler;
.source "Toggle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/Toggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$android$systemui$statusbar$powerwidget$Toggle$State:[I


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;


# direct methods
.method static synthetic $SWITCH_TABLE$com$android$systemui$statusbar$powerwidget$Toggle$State()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->$SWITCH_TABLE$com$android$systemui$statusbar$powerwidget$Toggle$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->values()[Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->INTERMEDIATE:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_OFF:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_ON:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->UNKNOWN:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->$SWITCH_TABLE$com$android$systemui$statusbar$powerwidget$Toggle$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/Toggle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const/16 v5, 0x8

    const/high16 v10, 0x3f80

    const v9, 0x3ecccccd

    const/4 v8, 0x1

    const/4 v4, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->onHandleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v3, v3, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$0(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIconView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$1(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$2(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v7, v7, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mState:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    #calls: Lcom/android/systemui/statusbar/powerwidget/Toggle;->stateToBoolean(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)Z
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$3(Lcom/android/systemui/statusbar/powerwidget/Toggle;Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getIconForState(Z)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #calls: Lcom/android/systemui/statusbar/powerwidget/Toggle;->getThemeResource(I)Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$4(Lcom/android/systemui/statusbar/powerwidget/Toggle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v3, v3, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "tweaks_use_heqs_overlay"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v3, v3, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mState:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    sget-object v6, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v3, v3, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "tweaks_heqs_offcolor"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIconView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$1(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getIndicatorsCount()I

    move-result v3

    if-le v3, v8, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #calls: Lcom/android/systemui/statusbar/powerwidget/Toggle;->setIndicatorProgress()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$5(Lcom/android/systemui/statusbar/powerwidget/Toggle;)V

    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->$SWITCH_TABLE$com$android$systemui$statusbar$powerwidget$Toggle$State()[I

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v6, v6, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mState:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$2(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mTextId:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$8(Lcom/android/systemui/statusbar/powerwidget/Toggle;)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_c

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$2(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mTextId:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$8(Lcom/android/systemui/statusbar/powerwidget/Toggle;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$0(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/powerwidget/Toggle;->isIndicatorEnabled:Z

    if-eqz v3, :cond_d

    move v3, v4

    :goto_6
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$2(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v3, v3, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "tweaks_heqs_hide_text"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_e

    move v3, v5

    :goto_7
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/powerwidget/Toggle;->isIndicatorEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$0(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v6, v6, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_heqs_hide_indicators"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_f

    :goto_8
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v6, v6, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mState:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getIconDrawableForState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    iget-object v3, v3, Lcom/android/systemui/statusbar/powerwidget/Toggle;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "tweaks_heqs_oncolor"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto/16 :goto_3

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIconView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$1(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getIndicatorsCount()I

    move-result v3

    if-ne v3, v8, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$0(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$6()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$0(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_4

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIconView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$1(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getIndicatorsCount()I

    move-result v3

    if-ne v3, v8, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$0(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$6()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$0(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIconView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$1(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getIndicatorsCount()I

    move-result v3

    if-ne v3, v8, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$0(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$7()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$0(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIconView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$1(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getIndicatorsCount()I

    move-result v3

    if-ne v3, v8, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$0(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$7()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mIndicator:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$0(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_4

    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$2(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/Toggle$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/Toggle;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/Toggle;->mText:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->access$9(Lcom/android/systemui/statusbar/powerwidget/Toggle;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_d
    move v3, v5

    goto/16 :goto_6

    :cond_e
    move v3, v4

    goto/16 :goto_7

    :cond_f
    move v5, v4

    goto/16 :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

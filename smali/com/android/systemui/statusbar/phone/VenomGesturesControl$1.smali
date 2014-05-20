.class Lcom/android/systemui/statusbar/phone/VenomGesturesControl$1;
.super Ljava/lang/Object;
.source "VenomGesturesControl.java"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/VenomGesturesControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/VenomGesturesControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$1;->this$0:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V
    .locals 13

    const-string v7, "Venom"

    const-string v8, "onGesturePerformed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$1;->this$0:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mLibrary:Landroid/gesture/GestureLibrary;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->access$0(Lcom/android/systemui/statusbar/phone/VenomGesturesControl;)Landroid/gesture/GestureLibrary;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$1;->this$0:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mLibrary:Landroid/gesture/GestureLibrary;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->access$0(Lcom/android/systemui/statusbar/phone/VenomGesturesControl;)Landroid/gesture/GestureLibrary;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    :goto_1
    return-void

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/Prediction;

    const-string v8, "Venom"

    iget-wide v9, v3, Landroid/gesture/Prediction;->score:D

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v8, v3, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v10, 0x4014

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    new-instance v8, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$1;->this$0:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    iget-wide v10, v3, Landroid/gesture/Prediction;->score:D

    iget-object v12, v3, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;-><init>(Lcom/android/systemui/statusbar/phone/VenomGesturesControl;DLjava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;->name:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;->access$1(Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v7, 0x2

    aget-object v1, v2, v7

    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$1;->this$0:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->gestureAction:Lvenom/common/Gestures;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->access$1(Lcom/android/systemui/statusbar/phone/VenomGesturesControl;)Lvenom/common/Gestures;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Lvenom/common/Gestures;->PerformAction(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v7, "Venom - Gestures"

    const-string v8, "mLibrary is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$1;->this$0:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->access$2(Lcom/android/systemui/statusbar/phone/VenomGesturesControl;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "Could not load preconfigured gestures."

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

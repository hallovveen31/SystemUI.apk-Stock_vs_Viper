.class Lcom/android/systemui/statusbar/phone/ContactWidget$2;
.super Ljava/lang/Object;
.source "ContactWidget.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ContactWidget;->setOnLongClickListener(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

.field private final synthetic val$n:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ContactWidget;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->val$n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ContactWidget;->data:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->val$n:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/ContactWidget;->useVibrator:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ContactWidget;->vibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-wide v2, v2, Lcom/android/systemui/statusbar/phone/ContactWidget;->vibratorTimeInMs:J

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    const/4 v1, 0x0

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    aget-object v2, v0, v6

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->isNotNA(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ContactWidget;->statusbar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    aget-object v2, v0, v6

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->openWhatsApp(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    const-string v4, "whatsappNotAvailable"

    const-string v5, "string"

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->isNotNA(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ContactWidget;->statusbar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->startSms(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    const-string v4, "phoneNoNotAvailable"

    const-string v5, "string"

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->makeToast(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->isNotNA(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ContactWidget;->statusbar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->makeCall(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    const-string v4, "workNoNotAvailable"

    const-string v5, "string"

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->makeToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->isNotNA(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ContactWidget;->statusbar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->makeCall(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    const-string v4, "homeNoNotAvailable"

    const-string v5, "string"

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->makeToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->isNotNA(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ContactWidget;->statusbar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->makeCall(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$2;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    const-string v4, "phoneNoNotAvailable"

    const-string v5, "string"

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ContactWidget;->makeToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

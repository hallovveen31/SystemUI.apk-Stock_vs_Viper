.class Lcom/android/systemui/statusbar/phone/ContactWidget$3;
.super Ljava/lang/Object;
.source "ContactWidget.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ContactWidget;->setOnLongClickListenerOpenContact(Landroid/widget/ImageView;I)V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$3;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$3;->val$n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$3;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ContactWidget;->data:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$3;->val$n:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$3;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ContactWidget;->statusbar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$3;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ContactWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$3;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/ContactWidget;->useVibrator:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$3;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ContactWidget;->vibrator:Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ContactWidget$3;->this$0:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iget-wide v3, v3, Lcom/android/systemui/statusbar/phone/ContactWidget;->vibratorTimeInMs:J

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

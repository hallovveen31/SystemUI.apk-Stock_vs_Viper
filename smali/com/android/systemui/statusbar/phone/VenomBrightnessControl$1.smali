.class Lcom/android/systemui/statusbar/phone/VenomBrightnessControl$1;
.super Ljava/lang/Object;
.source "VenomBrightnessControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl$1;->this$0:Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl$1;->this$0:Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->access$0(Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl$1;->this$0:Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl$1;->this$0:Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mInitialTouchX:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->access$1(Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;)I

    move-result v1

    #calls: Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->adjustBrightness(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->access$2(Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl$1;->this$0:Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;

    const/16 v1, 0x15

    #setter for: Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->mLinger:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->access$3(Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;I)V

    return-void
.end method

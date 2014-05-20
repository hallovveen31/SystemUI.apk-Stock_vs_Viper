.class Lcom/android/systemui/statusbar/info/TextInfo$2;
.super Ljava/lang/Object;
.source "TextInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/info/TextInfo;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/info/TextInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/info/TextInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/info/TextInfo$2;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo$2;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/TextInfo$2;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/info/TextInfo;->getIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/info/TextInfo;->setIcon(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo$2;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/TextInfo$2;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/info/TextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/info/TextInfo;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo$2;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/info/TextInfo;->onStartIntenal()V

    return-void
.end method

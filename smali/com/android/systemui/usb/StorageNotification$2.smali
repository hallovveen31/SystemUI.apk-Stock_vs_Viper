.class Lcom/android/systemui/usb/StorageNotification$2;
.super Ljava/lang/Object;
.source "StorageNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/StorageNotification;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$2;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$2;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #calls: Lcom/android/systemui/usb/StorageNotification;->startAsync()V
    invoke-static {v0}, Lcom/android/systemui/usb/StorageNotification;->access$600(Lcom/android/systemui/usb/StorageNotification;)V

    return-void
.end method

.class public interface abstract Lde/gdata/mobilesecurity/inapp/plasma/PlasmaListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onItemInformationListReceived(IILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPurchaseItemFinished(IILde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;)V
.end method

.method public abstract onPurchaseItemInitialized(IILde/gdata/mobilesecurity/inapp/plasma/PurchaseTicket;)V
.end method

.method public abstract onPurchasedItemInformationListReceived(IILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;",
            ">;)V"
        }
    .end annotation
.end method

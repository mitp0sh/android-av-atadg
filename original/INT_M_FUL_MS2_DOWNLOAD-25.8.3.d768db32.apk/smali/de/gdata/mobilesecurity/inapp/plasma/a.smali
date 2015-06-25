.class Lde/gdata/mobilesecurity/inapp/plasma/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/inapp/plasma/Plasma;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/inapp/plasma/Plasma;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/plasma/a;->a:Lde/gdata/mobilesecurity/inapp/plasma/Plasma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x2

    .line 109
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "onItemInformationListReceived"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    aget-object v0, p3, v2

    if-eqz v0, :cond_0

    aget-object v0, p3, v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 114
    new-instance v3, Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;

    invoke-direct {v3, v2}, Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/a;->a:Lde/gdata/mobilesecurity/inapp/plasma/Plasma;

    iget-object v2, v0, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->c:Lde/gdata/mobilesecurity/inapp/plasma/PlasmaListener;

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, p3, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v3, v0, v1}, Lde/gdata/mobilesecurity/inapp/plasma/PlasmaListener;->onItemInformationListReceived(IILjava/util/ArrayList;)V

    .line 135
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_2
    const-string v1, "onPurchasedItemInformationListReceived"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    aget-object v0, p3, v2

    if-eqz v0, :cond_3

    aget-object v0, p3, v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 123
    new-instance v3, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;

    invoke-direct {v3, v2}, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 125
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/a;->a:Lde/gdata/mobilesecurity/inapp/plasma/Plasma;

    iget-object v2, v0, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->c:Lde/gdata/mobilesecurity/inapp/plasma/PlasmaListener;

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, p3, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v3, v0, v1}, Lde/gdata/mobilesecurity/inapp/plasma/PlasmaListener;->onPurchasedItemInformationListReceived(IILjava/util/ArrayList;)V

    goto :goto_1

    .line 128
    :cond_4
    const-string v1, "onPurchaseItemFinished"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    new-instance v1, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;

    aget-object v0, p3, v2

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;-><init>(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/a;->a:Lde/gdata/mobilesecurity/inapp/plasma/Plasma;

    iget-object v2, v0, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->c:Lde/gdata/mobilesecurity/inapp/plasma/PlasmaListener;

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, p3, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v3, v0, v1}, Lde/gdata/mobilesecurity/inapp/plasma/PlasmaListener;->onPurchaseItemFinished(IILde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;)V

    goto :goto_1
.end method

.class public Lde/gdata/mobilesecurity/mms/json/base/filescanreport/PutRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/PutRequest;->Items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/PutRequest;->Items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/PutRequest;->Items:Ljava/util/List;

    .line 11
    return-void
.end method

.method public withItems(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/PutRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/filescanreport/PutRequest;"
        }
    .end annotation

    .prologue
    .line 18
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/PutRequest;->Items:Ljava/util/List;

    .line 19
    return-object p0
.end method

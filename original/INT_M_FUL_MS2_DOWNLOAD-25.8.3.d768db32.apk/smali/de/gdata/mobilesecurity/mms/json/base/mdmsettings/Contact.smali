.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;",
            ">;"
        }
    .end annotation
.end field

.field private ProfileId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;->Items:Ljava/util/List;

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
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;->Items:Ljava/util/List;

    return-object v0
.end method

.method public getProfileId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;->ProfileId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;->Items:Ljava/util/List;

    .line 25
    return-void
.end method

.method public setProfileId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;->ProfileId:Ljava/lang/Integer;

    .line 12
    return-void
.end method

.method public withItems(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;"
        }
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;->Items:Ljava/util/List;

    .line 33
    return-object p0
.end method

.method public withProfileId(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;->ProfileId:Ljava/lang/Integer;

    .line 20
    return-object p0
.end method

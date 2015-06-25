.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Address:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Address;",
            ">;"
        }
    .end annotation
.end field

.field private Communication:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;",
            ">;"
        }
    .end annotation
.end field

.field private FirstName:Ljava/lang/String;

.field private Id:Ljava/lang/Integer;

.field private LastName:Ljava/lang/String;

.field private MiddleName:Ljava/lang/String;

.field private NamePrefix:Ljava/lang/String;

.field private Organisation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;",
            ">;"
        }
    .end annotation
.end field

.field private Visibility:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Address:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Communication:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Organisation:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Address:Ljava/util/List;

    return-object v0
.end method

.method public getCommunication()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Communication:Ljava/util/List;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->FirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->LastName:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->MiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->NamePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganisation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Organisation:Ljava/util/List;

    return-object v0
.end method

.method public getVisibility()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Visibility:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAddress(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Address:Ljava/util/List;

    .line 103
    return-void
.end method

.method public setCommunication(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Communication:Ljava/util/List;

    .line 117
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->FirstName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Id:Ljava/lang/Integer;

    .line 25
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->LastName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setMiddleName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->MiddleName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setNamePrefix(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->NamePrefix:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setOrganisation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Organisation:Ljava/util/List;

    .line 131
    return-void
.end method

.method public setVisibility(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Visibility:Ljava/lang/Integer;

    .line 90
    return-void
.end method

.method public withAddress(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Address;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;"
        }
    .end annotation

    .prologue
    .line 110
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Address:Ljava/util/List;

    .line 111
    return-object p0
.end method

.method public withCommunication(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;"
        }
    .end annotation

    .prologue
    .line 125
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Communication:Ljava/util/List;

    .line 126
    return-object p0
.end method

.method public withFirstName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->FirstName:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public withId(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Id:Ljava/lang/Integer;

    .line 33
    return-object p0
.end method

.method public withLastName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->LastName:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public withMiddleName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->MiddleName:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public withNamePrefix(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->NamePrefix:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public withOrganisation(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;"
        }
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Organisation:Ljava/util/List;

    .line 139
    return-object p0
.end method

.method public withVisibility(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->Visibility:Ljava/lang/Integer;

    .line 98
    return-object p0
.end method

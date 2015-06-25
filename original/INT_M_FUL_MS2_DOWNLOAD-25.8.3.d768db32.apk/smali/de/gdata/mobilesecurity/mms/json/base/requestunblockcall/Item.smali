.class public Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Date:Ljava/util/Date;

.field private FirstName:Ljava/lang/String;

.field private Incoming:Ljava/lang/Boolean;

.field private LastName:Ljava/lang/String;

.field private PhoneNumber:Ljava/lang/String;

.field private ProfileId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->Date:Ljava/util/Date;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->FirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getIncoming()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->Incoming:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->LastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->PhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->ProfileId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->Date:Ljava/util/Date;

    .line 15
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->FirstName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setIncoming(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->Incoming:Ljava/lang/Boolean;

    .line 41
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->LastName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->PhoneNumber:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setProfileId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->ProfileId:Ljava/lang/Integer;

    .line 28
    return-void
.end method

.method public withDate(Ljava/util/Date;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->Date:Ljava/util/Date;

    .line 23
    return-object p0
.end method

.method public withFirstName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->FirstName:Ljava/lang/String;

    .line 62
    return-object p0
.end method

.method public withIncoming(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->Incoming:Ljava/lang/Boolean;

    .line 49
    return-object p0
.end method

.method public withLastName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->LastName:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public withPhoneNumber(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->PhoneNumber:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public withProfileId(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->ProfileId:Ljava/lang/Integer;

    .line 36
    return-object p0
.end method

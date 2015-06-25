.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Id:Ljava/lang/Integer;

.field private Name:Ljava/lang/String;

.field private Type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;->Id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;->Type:Ljava/lang/Integer;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;->Id:Ljava/lang/Integer;

    .line 16
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;->Name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;->Type:Ljava/lang/Integer;

    .line 29
    return-void
.end method

.method public withId(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;->Id:Ljava/lang/Integer;

    .line 24
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;->Name:Ljava/lang/String;

    .line 50
    return-object p0
.end method

.method public withType(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Organisation;->Type:Ljava/lang/Integer;

    .line 37
    return-object p0
.end method

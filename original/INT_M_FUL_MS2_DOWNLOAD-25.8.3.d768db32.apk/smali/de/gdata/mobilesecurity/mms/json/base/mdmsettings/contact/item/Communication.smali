.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Id:Ljava/lang/Integer;

.field private Type:Ljava/lang/Integer;

.field private Value:Ljava/lang/String;


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
    .line 24
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;->Id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;->Type:Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;->Value:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;->Id:Ljava/lang/Integer;

    .line 21
    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;->Type:Ljava/lang/Integer;

    .line 34
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;->Value:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public withId(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;->Id:Ljava/lang/Integer;

    .line 29
    return-object p0
.end method

.method public withType(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;->Type:Ljava/lang/Integer;

    .line 42
    return-object p0
.end method

.method public withValue(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication;->Value:Ljava/lang/String;

    .line 55
    return-object p0
.end method

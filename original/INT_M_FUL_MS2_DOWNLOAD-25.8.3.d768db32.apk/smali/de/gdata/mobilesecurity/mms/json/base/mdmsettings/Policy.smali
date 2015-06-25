.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Conditions:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;

.field private Id:Ljava/lang/Integer;

.field private Reactions:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConditions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->Conditions:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->Id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getReactions()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->Reactions:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;

    return-object v0
.end method

.method public setConditions(Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->Conditions:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;

    .line 23
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->Id:Ljava/lang/Integer;

    .line 10
    return-void
.end method

.method public setReactions(Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->Reactions:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;

    .line 36
    return-void
.end method

.method public withConditions(Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->Conditions:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Conditions;

    .line 31
    return-object p0
.end method

.method public withId(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->Id:Ljava/lang/Integer;

    .line 18
    return-object p0
.end method

.method public withReactions(Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;->Reactions:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;

    .line 44
    return-object p0
.end method

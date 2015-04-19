import com.alicanto.networking_designer.Role
import com.alicanto.networking_designer.User

class BootStrap {

    def init = { servletContext ->
        // Roles
        def adminRole = new Role(name: 'Admin', description: 'admin role', status: true, createdBy: null, createdDate: null, updatedBy: null, updatedDate: null)
        adminRole.save()
        def generalRole = new Role(name: 'General', description: 'general role', status: true, createdBy: null, createdDate: null, updatedBy: null, updatedDate:null)
        generalRole.save()

        // Users
        def systemUser = new User(userName: 'system', password: 'none'.encodeAsMD5(), name: 'System', lastName: 'System', identityNumber: '123456', status: true, lastAccessDate: null, role: null)
        systemUser.save()
        def adminUser = new User(userName: 'admin', password: 'admin'.encodeAsMD5(), name: 'Admin', lastName: 'Admin', identityNumber: '654321', status: true, lastAccessDate: null, role: adminRole)
        adminUser.save()
    }
    def destroy = {
    }
}
